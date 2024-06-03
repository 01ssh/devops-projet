bucket_name = "dev-proj-1-remote-state-bucket-9999999"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-west-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-west-3a", "us-west-3b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDM3ZhHFvbI0uCuyKDN5faRulil3fn5lNmigakoK1sGPQCuxHPVihQ41+zigS/Og7qYgMDg7dx71ePXZdF9UZeqoJ8oVWFp/GgJriCMIXzd5UJ8vZN4i9ZSP/P0G052hXbb5pKmKDLiwJpxmHAWqPBkXeWa0hq5jTQB8ufP5rIktan9Vb2jCwUCfEmY9ofNEP1Crw1JJQPo6ImSMTdVbbF2Gt+YHKuT/Jfy4VfzoMWOGSvm6Xs57sSjNnCC48vKwGBhS0sH1mUFzJwogubhuezovNYLD89gR4wff5pTCsTvGQgFe7wNsZTKD6MO2aZkeswUMEhk3UzFuYA21SQTVnM1 votre_email@example.com"
ec2_ami_id     = "ami-06dd92ecc74fdfb36"

#ec2_user_data_install_apache = ""

domain_name = "captaincontainer.com"

