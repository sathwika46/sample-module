provider "aws" {
    region = "ap-south-1"
  
}
variable "ami_value" {
    description = "value for the ami"
  
}
module "ec2_instance" {
    source = "./mudule/ec2_instance"
    ami_value = "ami-0f5ee92e2d63afc18"
    instance_type_value = "t2.micro"
  
}
