variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the instance"
  default     = "ami-05ffdb220b574ff91"  # Amazon Linux 2 AMI
}

variable "instance_type" {
  default = "t2.micro"
}
