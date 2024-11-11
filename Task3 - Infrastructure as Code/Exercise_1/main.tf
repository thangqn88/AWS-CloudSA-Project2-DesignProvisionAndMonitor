# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity-t2" {
  ami           = "ami-0984f4b9e98be44bf" # Amazon Linux 2 AMI (HVM), SSD
  instance_type = "t2.micro"
  count         = 4
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity-m4" {
  ami           = "ami-0984f4b9e98be44bf"
  instance_type = "m4.large"
  subnet_id     = "subnet-02b445de0b6b93b86"
  count         = 2
  tags = {
    Name = "Udacity M4"
  }
}
