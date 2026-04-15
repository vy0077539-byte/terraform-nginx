Terraform AWS EC2 with VPC Nginx

This project uses Terraform to create a VPC and launch an AWS EC2 instance with Nginx installed.

Features

- Creates VPC and Subnet
- Configures Internet Gateway and Route Table
- Launches EC2 instance
- Installs and runs Nginx

Requirements

- Terraform
- AWS CLI configured

Usage

git clone https://github.com/vy0077539-byte/terraform-nginx.git
cd terraform-nginx
terraform init
terraform apply

Type "yes" when prompted.

Access

Open in browser:

http://<public-ip>

Destroy

terraform destroy

Note

Do not upload:

- .terraform/
- *.tfstate
- *.tfstate.backup
