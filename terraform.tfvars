aws_region        = "us-east-1"
availability_zone = "us-east-1a"
instance_type     = "t2.micro"
ami_id            = "ami-00f251754ac5da7f0"

default_tags = {
  Environment = "Prod"
  Project     = "web-app"
  Name        = "web-app"
}

