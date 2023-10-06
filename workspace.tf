provider "aws" {
    region = "ap-south-1"

}
variable "ami_value" {
    description = "value for the ami"

}
variable "instance_type_value" {
    description = "value for instance_type"
    type = map(string)

    default = {
      "dev" = "t2.micro"
      "prod" = "t2.small"

    }
}
module "ec2_instance" {
    source = "./mudule/ec2_instance"
    ami_value = "ami-0f5ee92e2d63afc18"
    instance_type_value = lookup(var.instance_type_value,terraform.workspace,"t2.micro")

}
