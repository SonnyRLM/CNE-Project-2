variable "outbound_port" {
    description = "List of outbound port"
    default = 0
}

variable "open_internet" {
    default = "0.0.0.0/0"
}

variable "configure_VM_CIDR" {
    default = "0.0.0.0/0"
}

variable "vpc_id_sg" {
    default = "null"
}