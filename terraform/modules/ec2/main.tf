resource "aws_instance" "aws_app" {
    ami                         = data.aws_ami.ubuntu.id
    instance_type               = var.instance_type
    subnet_id                   = var.subnet_id
    vpc_security_group_ids      = var.security_group_id
    associate_public_ip_address = true
    key_name                    = var.key_name
    

    tags = merge(var.tags_for_instance, {
        "Name" = var.instance_name
    })
}

data "aws_ami" "ubuntu" {
    most_recent = true
    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    }
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
    owners = ["099720109477"]
}
