# resource "tls_private_key" "terrafrom_generated_private_key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

resource "aws_key_pair" "generated_key" {


  key_name = "key-ec2"

  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3qrpv2Jv5HsdbyTJhEV2C7yyX5BYFB8o1vBBzl//OJ5K4jzQJBd2jvq7TNGPK6mAV5b9vbvzec4E7/BfqZJ+oqGTgo3E1hb3kO8HElqJGL/U59RwdI0Z+oNTVhHl4Gc3k9mYb4JXH1JnVfT+xmo7yvNL4SogBftsHjPYnkCPJ8QYlLvAugYjaN6jGTBjWnQN0R96tKZcyhA6V+scsnzQCJnQ+mv/oMrYch8pSV90TNRBwQp5EyoLNoyyUVQrgHOb1HOp2jalbWwJhillYsWq5AyfMbD7H/gQAd1SSkBjhj/UL9/IeMvnwPLCXGI7n6a7QqUmBTPlfgDgDydBo9UntGT0jAxSvlKtQCAVggsEG5HFuLGGjYnc+oSOyg69bXHB8dNmOXJNDb2MCu2pDPkxo13DomGh8Lu9UVhcJ+kYPkd8xhx93PCdysDj989W96i5Kc5c1EzX1a2fp2b/prAU8RyRSl18/WyriPXddUrC1DcfubLk5Lgk3lF3vbKv7H/k= <ahmed_m.embaby@yahoo.com>"
  
   
# provisioner "local-exec" {
#     command = "chmod 400 key-ec2.pem"
 
# }
#  provisioner "local-exec" {
#     command = <<-EOT
#       echo '${tls_private_key.terrafrom_generated_private_key.private_key_pem}' > key-ec2.pem
#       chmod 400 key-ec2.pem
#     EOT
#   }
}