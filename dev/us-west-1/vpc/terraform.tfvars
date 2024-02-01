vpc_configs = [
    {
        name = "ran-vpc-dev",
        cidr = "10.5.0.0/16",

        azs             = ["ap-northeast-1a", "ap-northeast-1c"],
        private_subnets = ["10.5.1.0/24", "10.5.3.0/24"],
        public_subnets  = ["10.5.101.0/24", "10.5.103.0/24"],

        enable_nat_gateway = false,

        tags = {
            Terraform = "true"
            Environment = "dev"
        }
    }
]
