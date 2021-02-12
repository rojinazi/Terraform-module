module "myvpc" {
    source = "../modules/vpc"
  
}

module "security_group" {
  source = "../modules/security_group"
  vpc = module.myvpc.my_vpc
}


module "EC2" {
  source        = "../modules/ec2"
  SG1           = module.security_group.securityname
  Keyname       = "dec2020"
  instance_type = "t3.micro"
  subnets  = module.myvpc.public_subnet
}
