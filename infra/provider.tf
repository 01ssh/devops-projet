provider "aws" {
  region                   = "eu-west-3"
  shared_credentials_files = ["/Ubuntu/.aws/credentials"]
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}
provider "docker" {
  alias = "alternate"
  host  = "unix:///var/run/docker.sock"
}