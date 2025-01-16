variable "instance_names" {
    type = map
    default = {
        db = "t2.small"
        backend = "t2.micro"
        frontend = "t2.micro"
    }
}

# variable "ami_id" {
#     type = string
#     default = "ami-09c813fb71547fc4f"
# }

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = true
    }
}

#variables for r53
variable "zone_id" {
    type = string
    default = "Z099839639LSXUOMJUHEL"
}

variable "domain_name" {
    type = string
    default = "avinexpense.online"
}