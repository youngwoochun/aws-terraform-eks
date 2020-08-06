FROM alpine:3.7
RUN apk add -y wget \
    && wget https://releases.hashicorp.com/terraform/0.12.28/terraform_0.12.28_linux_amd64.zip \
    && unzip terraform_0.12.28_linux_amd64.zip -d /usr/local/bin/ \
    && rm terraform_0.12.28_linux_amd64.zip \
    && terraform --version
