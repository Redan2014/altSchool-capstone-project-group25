terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region                   = "eu-west-2"
  shared_credentials_files = ["~/.aws/credentials"]
  # profile                  = "default"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}

provider "kubernetes" {
  host  = aws_eks_cluster.altcluster.endpoint
  token = data.aws_eks_cluster_auth.altcluster.token
  cluster_ca_certificate = base64decode(
  data.aws_eks_cluster.altcluster.certificate_authority[0].data)
}
