resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0db726f06945c7d90"]

    tags = {
        Name = "db"
    }
}