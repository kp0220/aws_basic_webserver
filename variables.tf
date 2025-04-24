variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the instance"
  default     = "ami-0e449927258d45bc4"  # Amazon Linux 2 AMI (for example)
}

variable "instance_type" {
  default = "t2.micro"
}
