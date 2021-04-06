resource "aws_security_group" "ssh-allowed" {
  description = "Open required ports for project"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [var.configure_VM_CIDR]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    cidr_blocks = [var.configure_VM_CIDR]
  }

  ingress {
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"

    cidr_blocks = [var.configure_VM_CIDR]
  }

  ingress {
    from_port = 8080
    to_port   = 8080
    protocol  = "tcp"

    cidr_blocks = [var.configure_VM_CIDR]
  }

  egress {
    from_port = var.outbound_port
    to_port = var.outbound_port
    protocol = "-1"
    cidr_blocks = [var.open_internet]
  }

  tags = {
    project = "CNE-Project-2"
  }
}