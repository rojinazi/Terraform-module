module "mysg" {
  source = "../modules/security_group"
  
}


module "myalb" {
  source = "../modules/alb"
  sg = module.mysg.securityname
}


module "myasg" {
  source           = "../modules/autoscaling"
  target_group_arn = module.myalb.albtargetgroup_arn
  sg               = module.mysg.securityname
  instance_type    = "t3.micro"
  keyname          = "dec2020"

}