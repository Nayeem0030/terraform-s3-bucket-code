resource "aws_security_group" "SecurityGroupsByNYM"{
     name = "SecurityGroupsMyTF"
     description = "This SG created by Automatically through TF"
     vpc_id     = "vpc-06ae3c2bbaf9d6f81"

     ingress {
         description = "Enabling the INbound Rule"
         from_port = 8080
         to_port   = 8080
         protocol = "tcp"
         cidr_block = ["0.0.0.0/0"]
     }

     egress {
         description = "Enabling the Outbound Rule"
         from_port = 0
         to_port   = 65535
         protocol = "tcp"
         cidr_block = ["0.0.0.0/0"]
     }

     tags = {

         Name = "SG By TF"
     }

}
