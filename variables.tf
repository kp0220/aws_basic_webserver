variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the instance"
  default     = "ami-0c02fb55956c7d316"  # Amazon Linux 2 AMI (for example)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of the AWS key pair"
}
