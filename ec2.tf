resource "aws_instance" "instance-web-server" {
for_each = var.instance-web-server
ami = "ami-0b6d9d3d33ba97d99"
instance_type = each.value.instance

}
variable "instance-web-server" {
  default = {
    web-server1 =  {
      instance = "t2.micro"
    }
   
      web-server3 =  {
      instance = "t3.small"
 
    }
      web-server5 =  {
      instance = "t2.micro"
    }
      web-server6 =  {
      instance = "t3.micro"
    }

  
  }
  
}