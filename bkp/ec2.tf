resource "aws_instance" "web" {
    count = 1
    ami = "ami-0a82087acf98dc4ac"
    instance_type = "t2.micro"
    key_name = "Web_SP"
    associate_public_ip_address = true

}

