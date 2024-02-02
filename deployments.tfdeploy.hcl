identity_token "aws" {
  audience = ["terraform-stacks-private-preview"]
}

deployment "main" {
  variables = {
    aws_identity_token_file = identity_token.aws.jwt_filename
    regions             = ["us-east-1"]
    role_arn            = "arn:aws:iam::232978747902:role/stacks"
    vpc_name = "destroy-vpc"
    vpc_cidr = "10.0.0.0/16"
  }
}
