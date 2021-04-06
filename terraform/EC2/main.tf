resource "aws_instance" "CNE-Jenkins" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = "TerraformPair"
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids

  lifecycle {
    create_before_destroy = true
   }

  tags = {
    project = "CNE-Project-2"
  }
}

resource "aws_instance" "CNE-Testing" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = "TerraformPair"
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    project = "CNE-Project-2"
  }

}