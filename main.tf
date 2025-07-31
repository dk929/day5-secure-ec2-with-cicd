provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "day5_ec2" {
    ami = "ami-0d0ad8bb301edb745"  # AWS LINUX 2023 AMI ID
    instance_type = "t2.micro"

    tags = {
        Name = "day5-secure-ec2"
    }
}

resource "aws_security_group" "day5_sg" {
    name = "day5_secure_sg"
    description = "Allow SSH from my IP only"

    ingress {
        from_port = 22
        to_port  = 22
        protocol = "tcp"
        cidr_blocks = ["103.168.95.98/32"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
}

resource "aws_iam_role" "day5_role" {
    name = "day5-ec2-role"
    assume_role_policy = jsonencode({
        Version = "2012-10-17",
        Statement = [{
            Action = "sts:AssumeRole",
            Effect = "Allow",
            Principal = {
                Service = "ec2.amazonaws.com"
            }
        }]
    })
}


