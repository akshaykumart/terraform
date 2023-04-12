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

variable "inst_type" {
    description = "Multiple instance types"
    type = list(string)
    default = [ "t3.micro", "t3.small", "t3.medium" ]
}

variable "inst_count" {
    description = "No of EC2 instances to be launched"
    type = number
    default = 1
}

variable "ec2_instance_tags" {
   description = "Default tags to be used"
   type =  map(string)
   default = {
       "Name" = "webapp"
       "Environment" = "Dev"
       "Type" = "Application"
   }
}
