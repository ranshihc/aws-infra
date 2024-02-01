provider "aws" {
  access_key = "AKIAU7KQZZMOOH25PNUO"
  secret_key = "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"
  region     = "ap-northeast-1"
}

module "vpc" {
  source      = "app.terraform.io/jurassic-park/vpc/aws"
  version     = "1.0.0"
  vpc_configs = var.vpc_configs
}


