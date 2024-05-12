###############################################
# TERRAFORM to build EC2-OLLAMA 
# by Tuệ Hoàng 

  #################################################################
  ############ REMEMBER: Generate your Key Pair ###################
  #aws ec2 create-key-pair --key-name YourKeyName --query 'KeyMaterial' --output text > YourKeyName.pem
  #################################################################

provider "aws" {
  region = "ca-central-1"
}

resource "aws_instance" "terraform-ollama-1456" {
  ami           = "ami-0c4596ce1e7ae3e68"  # Ubuntu 24.04 LTS Generic Instance 
  instance_type = "t2.2xlarge"  # Optimal instance size for personal usage
  key_name      = "YourKeyName"

  ebs_block_device {
    device_name           = "/dev/sda1" // This is typically the root volume
    volume_size           = 100          // Set the volume size to 100GB
    delete_on_termination = true         // Ensure the volume is deleted when the instance is terminated
  }

  user_data = <<-EOF
              #!/bin/bash

              sudo apt-get update
              sudo apt -y upgrade

              sudo apt-get install -y gnupg software-properties-common

              sudo apt-get install -y awscli
              sudo apt-get install -y unzip
		
              sleep 3
              sudo curl -o /tmp/install1.sh -L https://ollama.com/install.sh
              sleep 3
              sudo chmod +x /tmp/install1.sh
              sleep 3

              sudo /tmp/install1.sh

              sudo ollama serve 
              sleep 60

              sudo ollama run llama3 &

              EOF

  tags = {
    Name = "terraform-ollama-1456"
  }


}
