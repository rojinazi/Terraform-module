/*module "my_vpc" {
    source = "../modules/vpc"
    vpc_cidr = "172.31.0.0/16"
    tenancy = "default"
    vpc_id = ""
    subnet_cidr = "172.31.1.0/24"
}*/

/*resource "aws_iam_user" "imuser" {
for_each = toset(var.iam_users)
  name  = each.value
}*/

/*data "aws_ami" "amazonlx" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["amazon"] # Canonical
}

resource "aws_instance" "example" {
count = var.create_instance ? var.instance_count : 0
  ami                    = data.aws_ami.amazonlx.id
  instance_type          = "t2.micro"
  key_name               = "dec2020"
  vpc_security_group_ids = ["sg-0bd415784c1253324"]
}

resource "aws_iam_user" "amiuser" {
  name = "rojina"
  
}*/

/*module "db" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 2.20"

  identifier = "demodb"

  engine            = "mysql"
  engine_version    = "5.7.19"
  instance_class    = "db.t2.micro"
  allocated_storage = 20

  name     = "demodb"
  username = "postgres"
  password = "Devops2021"
  port     = "3306"

  iam_database_authentication_enabled = true

  vpc_security_group_ids = ["sg-0bd415784c1253324"]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  monitoring_interval    = "30"
  monitoring_role_name   = "MyRDSMonitoringRole"
  create_monitoring_role = true

  tags = {
    Owner       = "postgre"
    Environment = "dev"
  }

  # DB subnet group
  subnet_ids = ["subnet-4dfda000", "subnet-024fc264"]

  # DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"

  # Snapshot name upon DB deletion
  final_snapshot_identifier = "demodb"

  # Database Deletion Protection
  deletion_protection = false

  parameters = [
    {
      name  = "character_set_client"
      value = "utf8"
    },
    {
      name  = "character_set_server"
      value = "utf8"
    }
  ]

  options = [
    {
      option_name = "MARIADB_AUDIT_PLUGIN"

      option_settings = [
        {
          name  = "SERVER_AUDIT_EVENTS"
          value = "CONNECT"
        },
        {
          name  = "SERVER_AUDIT_FILE_ROTATIONS"
          value = "37"
        },
      ]
    },
  ]
}*/

/*module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}*/