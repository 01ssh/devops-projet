bucket_name = "dev-proj-1-remote-state-bucket-9999999"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-west-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-west-3a", "eu-west-3b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJfWjCm9zWReTgFjqRapmOlLnVs/0zLgSsKALstP7gHFR25HfHu58pwLic0Sl9rYxW4mtbSt1ztWzcwLUku3DX9sRuT5770CRlgcAp5/qOpnHMDyO8LhPTv8sq8nZ3/dYZ0CQ4SMGKIegAkOl0Brydz3HRbA1wS3j2h4s2n2MW7G9K7IwI3K0FjD2QDKGQcQwwIkz4EX20eLioESziav15q1K7i+vFLs7A1OhxPkCIwA8jEvbm87uG1ZZyuPiseRP4eaXdIA8nKcd6Uud6nA5+1aV56z8Bn5MwGSbSElclGS8HNWlQtQs/msh6yv9eBUy+VzEgYhjV0g65KJUaAZ+l ubuntu@ip-172-31-25-159"
ec2_ami_id     = "ami-06dd92ecc74fdfb36"

#ec2_user_data_install_apache = ""

domain_name = "captaincontainer.com"

