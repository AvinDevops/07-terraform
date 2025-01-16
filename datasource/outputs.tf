output "ami_info" {
    value = data.aws_ami.ami
}

output vpc_info {
    value = data.aws_vpc.default
}