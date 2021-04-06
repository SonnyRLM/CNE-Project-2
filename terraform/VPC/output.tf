output "public_subnetA_id" {
    value = aws_subnet.CNE-Pub-1.id
}

output "public_subnetB_id" {
    value = aws_subnet.CNE-Pub-2.id
}

output "vpc-id" {
    value = aws_vpc.task_vpc.id
}