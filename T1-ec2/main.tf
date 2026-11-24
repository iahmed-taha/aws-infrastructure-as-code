provider "aws" {
  region = "us-east-1"   
}




module "ec2-instance" {
   source = "../ec2"
    ami_id = "ami-0f8a61b66d1accaee" # Example AMI ID for Ubuntu 20.04 in us-east-1
    instance_type = "t3.micro"
    server_name = "Tf-EC2-Server"
    key_name = "my-instance-key"
    associate_public_ip_address = true

}
