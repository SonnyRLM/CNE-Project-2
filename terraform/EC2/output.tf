output "CNE-Jenkins-IP" {
    value = aws_instance.CNE-Jenkins.public_ip
}

output "CNE-Testing-IP" {
    value = aws_instance.CNE-Testing.public_ip
}