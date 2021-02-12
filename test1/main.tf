module "security_group" {
  source = "../modules/security_group"
}


module "EC2" {
  source        = "../modules/ec2"
  SG1           = module.security_group.securityname
  Keyname       = "dec2020"
  instance_type = "t2.micro"
}