output "CNE-Jenkins-IP" {
    value = aws_instace.CNE-Jenkins.public_ip
}

output "CNE-Testing-IP" {
    value = aws_instace.CNE-Testing.public_ip
}