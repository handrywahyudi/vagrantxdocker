#!/bin/sh

# install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# install kops
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops
sudo mv kops /usr/local/bin/kops

# install terraform
wget https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_linux_amd64.zip
unzip terraform_1.0.4_linux_amd64.zip
mv ./terraform /usr/bin

