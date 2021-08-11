#
# Accesos para Client

resource "aws_security_group" "sg_client" {
  name        = "client"
  description = "Allow traffic for Client"
  vpc_id      = module.tf_base.show_vpc_id

  ingress {
    description      = "Client Passive FTP"
    from_port        = 20021
    to_port          = 20121
    protocol         = "tcp"
    cidr_blocks      = module.tf_base.show_client_cidr_block
  }

  ingress {
    description      = "Client FTP"
    from_port        = 20
    to_port          = 21
    protocol         = "tcp"
    cidr_blocks      = module.tf_base.show_client_cidr_block
  }

  ingress {
    description      = "Client SFTP"
    from_port        = 2222
    to_port          = 2222
    protocol         = "tcp"
    cidr_blocks      = module.tf_base.show_client_cidr_block
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "vpc-sg-client"
  }
}
