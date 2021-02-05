module "my_sg" {
  source = "../modules/security_group"

}
module "EC2" {
  source        = "../modules/ec2"
  SG1           = module.my_sg.securityname
  Keyname       = "dec2020"
  instance_type = "t3.micro"

}
