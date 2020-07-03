region                  = "us-east-1"

#worker_group_defaults = {
  #asg_name                    = "eks_worker_asg"
  #asg_max_size                = 3
  #asg_min_size                = 1
  #health_check_grace_period   = 300
  #health_check_type           = "EC2"
  #asg_desired_capacity        = 2
  #force_delete                = true

  #image_id                    = "ami-0ee0652ac0722f0e3"
  #instance_type               = "t2.medium"
  #key_name                    = "developer_eks_key"
  #user_data                   = ""
  #ebs_optimized               = false
  #enable_monitoring           = false
  #iam_instance_profile        = "node_profile"
  #associate_public_ip_address = false
  #delete_on_termination       = true
  #device_name                 = "eks_worker_ebs_volume"
  #delete_on_termination       = "true"
  #encrypted                   = "true"
  #volume_size                 = "20"
  #volume_type                 = "gp2"
#}


#bastion_delete_on_termination        = "true"
#bastion_encrypted                    = "true"
#bastion_volume_size                  = "20"
#bastion_volume_type                  = "gp2"
