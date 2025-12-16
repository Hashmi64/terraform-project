aws_region      = "ap-south-1"
sg_name         = "allow_ssh_app"
sg_description  = "Allow SSH + Flask + Node"
allowed_cidr    = "0.0.0.0/0"

ami_id          = "ami-02b8269d5e85954ef"
instance_type   = "t3.micro"
key_name        = "key_pair"
ec2_name        = "Terraform-Ansible-EC2"

ssh_port        = 22
flask_port      = 5000
node_port       = 3000
