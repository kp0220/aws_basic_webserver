variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the instance"
  default     = "ami-0c02fb55956c7d316"  # Amazon Linux 2 AMI (for example)
}

variable "instance_type" {
  default = "t2.micro"
}
