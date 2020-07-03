provider "aws" {
  region = var.region
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-state-product-a"
    key    = "dev/us-east-1/landing-zone"
    region = "us-east-1"
  }
}

data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.9"
}

module "my-cluster" {
  source          = "../eks"
  cluster_name    = var.cluster_name
  cluster_version = "1.16"
  subnets         = data.terraform_remote_state.network.outputs.private_subnet_id
  vpc_id          = data.terraform_remote_state.network.outputs.vpc_id
  worker_groups = [
   {
     instance_type = "m4.large"
     asg_max_size  = 5
   }
 ]
}
