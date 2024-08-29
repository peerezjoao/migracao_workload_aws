output "keyapp_kp" {
    value = aws_key_pair.keyapp_kp.key_name
    description = "Id of the keypair"
}