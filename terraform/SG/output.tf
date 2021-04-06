output "vpc_id_sg" {
    value = aws_security_group.ssh-allowed.id
}