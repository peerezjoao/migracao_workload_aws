# create a key pair for the application
# ssh-keygen -t rsa -b 4096 -m pem -f keyapp_kp && openssl rsa -in keyapp_kp -outform pem && chmod 400 keyapp_kp.pem
resource "aws_key_pair" "keyapp_kp" {
   key_name = "keyapp_kp"
   public_key = file("keyapp_kp.pub")

}