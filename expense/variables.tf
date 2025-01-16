#ec2 instance variables
variable "instance_names" {
    default = ["db", "frontend", "backend"]
}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = true

    }
}

#security variables
variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing_description"
}

variable "ing_port" {
    default = 22
}

variable "ing_protocol" {
    default = "tcp"
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
    default = "Z099839639LSXUOMJUHEL"
}

variable "domain_name" {
    default = "avinexpense.online"
}