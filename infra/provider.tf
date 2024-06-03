provider "aws" {
  region                   = "eu-west-3"
  shared_credentials_files = ["/Ubuntu/.aws/credentials"]
}

resource "aws_key_pair" "service_keypair" {
  key_name = "production"
  public_key = data.vault_generic_secret.service_ssh_key.data["public_key"]
}