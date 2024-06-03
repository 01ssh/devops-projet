bucket_name = "dev-proj-1-jenkins-remote-state-bucket-9999999"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["us-east-1a", "us-east-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDcAwNY+UZk0mQ9+NcW0BNfg0FpGUtO5Lc2bFPqzT8FWiCqGjDrxpW4AFuguF6sAWTlOd+BHrTaLro8qLWM0yjImhVnslR8OGrkrGE/Er246MmyFazUtcqiR+KagCvRBilz0R2nw5uokgWrLTlIkOeuS6lyUgHHHA4MpYnf6Tv86dJ0hqc+8YBkxJqHg/8z4ZdBHSPzwN2MsfMfqxwOMIJDv0r+PwMElo+oYNXwjGTX1awdLZG8IbVakIXPlCK3CrVXfjU8R+8WAw9wxdsVrlNPdFf4TvCZ+yytEV5Q/CT5LSKRr8kJO0ZCx9bk5XEe2BAQnTK8X1fak0/yRjv4AZqyJOjWK8Mo4YPRgk7IDkixQ+9cF5pTREZDkuYK2bOwWM5j+mG6J4W5Q0eu+Iq2gNAG6p71/VvMooR5hTUVjycBYqEx6E9J9FBzWMKLVAv/4uuQ7ejqt+IEWu2dgcDvrte++cWFb62KEWzR/qmhN6ZLw9ltIgpwU/KnoZhqFZlr5C0= ubuntu@ip-172-31-25-159"
ec2_ami_id     = "ami-06dd92ecc74fdfb36"

#ec2_user_data_install_apache = ""

domain_name = "captaincontainer.com"

