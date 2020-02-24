variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "number" {
    type = number
    default = "1"
}

variable "name" {
}

variable "region" {
    default = "eu-west-2"
}

variable "bucket_acl" {
    default = "private"
}
