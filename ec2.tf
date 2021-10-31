variable "instance_type" {
  type = map(any)
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
  }
}

resource "aws_instance" "webapp" {
  ami           = "ami-0fcf12ccffe66ff1c" 
  instance_type = lookup(var.instance_type, "default")
}
