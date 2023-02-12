# Keep tfstate storage on s3 bucket
terraform {
    backend "s3" {
    bucket = "terraform-backend-vdep"
    key    = "tfstate/myapp.tfstate"
    region = "us-east-1"
    encrypt = true
    }
}
