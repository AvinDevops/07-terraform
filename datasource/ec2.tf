resource "aws_instance" "instance"  {

    ami = data.aws_ami.ami.id
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0db726f06945c7d90"]

    tags = {
        Name = "sample_instance"
    }
}