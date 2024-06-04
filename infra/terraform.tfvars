bucket_name = "dev-proj-1-remote-state-bucket-api"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-west-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-west-3a", "eu-west-3b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7CL3XMkyqC6mdHRfwVoiGbu2y5fKr/UV8EB+VFK6WHEh2dhCc8iHKiIQQMLV9+RTCheNx1ojgsF+pXhntTRKZcLlHG/LT5va7RI93CO7zWIKwM6XqX66yBrGHpdrdqi4EXjQZaRu3DqAzULqcoBYf9JB+uqPV75804sbOb0p8xInPq/D6AP86kzVSSdWAhtNEvrZC4+YS0r6Hu9P8PmAeR7JrtrdiMHnGCRZHHaGfBuY4QNRPPErZljxaP1FN1/Y6SNX/GiCOWMkrLG4B2go9ZidMPJ2LEFbQn696toJF7OC1QDPeyatmNWzcodU7FNdBUCpSfMcmnTsoNZL5d++lIjubRZAliz62YWutiIrLz746ewDR36BBq965Rwu0DNW7pTFtwqawQyj2MmFfgwN1LFeNnfRjN+CmvLnQ//Z+Wi5Otx25i2feAE+9KB6Q0z3btDfjefjDvdl/uuVGHCjJ1gDRgdhlXkWyPrtsjLh8Uf9HZaqwc/BpjyX+IDH08G8= ubuntu@ip-172-31-3-246"
ec2_ami_id     = "ami-00ac45f3035ff009e"

#ec2_user_data_install_apache = ""

domain_name = "captaincontainer.com"

