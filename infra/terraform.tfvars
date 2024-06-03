bucket_name = "dev-proj-1-remote-state-bucket-9999999"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-west-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-west-1a", "us-west-1b"]

public_key = "sh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvrmg1zT2sHkOET0/XAH2tLwVPwuXyrkWlUcwlJY998IGpDp0LTh1Ba0d846KmmNZqBSgNknGboQ4OmSZ1hRMT/cJjTzaYAu00oox3Zh5z42gABPNbkzK7UyBCIiErImmPkbTEX43L9tIljVSl7z9lJifCpq9FrA7StjjmWHxI90rDMSSCmxCemRSU7jlX7VEqMvZIpgSZq6H2lgw8om2WpwU36H0dW7M8EnstUDayxsKzBTxhDwARq4MzBLKz7I7gXZT7FbR5uKQJE2EienpnFWoho6ldalL8HAo5iLyFRJO1xaRgYI1iOWeohAe70hQf7IBWIoCbO8o/VlJHwrvb votre_email@example.com"
ec2_ami_id     = "ami-06dd92ecc74fdfb36"

#ec2_user_data_install_apache = ""

domain_name = "captaincontainer.com"

