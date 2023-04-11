variable "aws-default-region" {
  type        = string
  description = "The AWS default region where resources are created"
  default = "us-east-1"
}

variable "aws-ami-id" {
  type        = string
  description = "The AWS ami id to create ec2 instance"
  default = "ami-007855ac798b5175e"
}
