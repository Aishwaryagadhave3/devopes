provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "myec2" {
    ami="ami-00bb6a80f01f03502"
    key_name = "vpc"
    instance_type = "t2.micro"
    security_groups =["default"] 
    tags={
        name="hcl-instances"
    }

  
}