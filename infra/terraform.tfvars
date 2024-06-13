bucket_name = "dev-proj-1-remote-state-bucket-api"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-west-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-west-3a", "eu-west-3b"]

public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMqcpD7qe2a65/i8bpZLsYmZrMaPB7X268hxxYA6scxz ubuntu@ip-11-0-1-106"
ec2_ami_id     = "ami-00ac45f3035ff009e"

ec2_user_data_install_apache = ""

domain_name = "captaincontainer.com"

