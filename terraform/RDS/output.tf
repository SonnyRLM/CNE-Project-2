output "prod_RDS_endpoint" {
    value = aws_db_instance.prod.endpoint
}

output "dev_RDS_endpoint" {
    value = aws_db_instance.dev.endpoint
    }