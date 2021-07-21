terraform {
  backend "s3" {
    bucket = "tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
    access_key = "miniominio"
    secret_key = "sekritsekrit"
    endpoint = "http://storage:9000"
    skip_credentials_validation = true
    force_path_style = true
  }
}

provider "tokend" {
  account  = "GCDTYTJMHGBB6C56LYF4CSYOI7I4A7LXGQRCAHGLOCYSB4W347HW6HLY"
  signer   = "SBMFSI6DUIDSG44Y2NLNHK5YGIOSLAI26AEEGQXA6XC5AL7QIYIJQ2G3"
  endpoint = "https://api.demo.sportsd3.com/"
}

module "tokend_vanilla" {
  source = "git::https://github.com/tokend/terraform-tokend-vanilla.git?ref=sd3"
}
