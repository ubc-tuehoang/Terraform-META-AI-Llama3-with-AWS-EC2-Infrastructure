# Terraforming META AI Llama3 with AWS EC2 Infrastructure

- Dare to dream
- Ignite your inspiration and innovation
- Strive for excellence
- Explore together & unlock the world's knowledge

## Terraforming META AI Llama3 with EC2 instance.

This Terraform script streamlines the process of launching an EC2 instance with OLLAMA and deploying the latest META model, Llama3. 

Embracing unique LLMs for each user offers a gateway to personalized conversations with GenAI, fostering individualized experiences that seamlessly weave together diverse narrative threads.

_Prompt example 1: In this unique adventure, you, the AI wizard, guide me as your apprentice through the mystical realms of our fantasy world. As we journey, echoes of King Arthur's legendary tale intertwine with our own, unveiling secrets of magic and valor._  

_Prompt example 2: As the AI game master, you weave an enthralling narrative set against the enigmatic ambiance of the 1950s—a period steeped in secrecy and fascination. In this immersive murder mystery, participants are whisked away to a vintage era of fedoras and seductive femmes fatales, where each lurking shadow harbors a clandestine truth and every hushed exchange unveils a vital clue._ 

## <ins>Advantages of maintaining unique conversion history with a GenAI:</ins>
1. Personalization: By retaining the conversation history, the chatbot can tailor responses and recommendations based on past interactions, providing a more personalized experience for users.
2. Contextual Understanding: Keeping track of previous conversations allows the chatbot to better understand the context of current queries, leading to more accurate and relevant responses.
3. Seamless Continuity: Users can pick up where they left off in previous conversations, ensuring a seamless and continuous dialogue with the chatbot, even across multiple sessions.

<img width="1334" alt="image" src="https://github.com/ubc-tuehoang/Terraform-META-AI-Llama3-with-AWS-EC2-Infrastructure/assets/86985864/1a938c04-9467-437b-af6c-792d98acc125">



## <ins>How-to terraforming Meta AI:</ins>

### Pre-clone steps:

> install aws-cli
	> how-to: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

> aws configure <update your secret key>

########### IMPORTANT STEP ######################
> aws ec2 create-key-pair --key-name YourKeyName --query 'KeyMaterial' --output text > YourKeyName.pem
########### Generate your PEM for key_name ######

> install terraform 
	> how-to: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli


### Cloning Steps:

> git clone https://github.com/ubc-tuehoang/Terraform-META-AI-Llama3-with-AWS-EC2-Infrastructure.git
> cd terraform

> (edit tf file, if needed)
> 

- > terraform init
- > terraform validate
- > terraform plan
- > terraform apply
- 	> remember to type 'yes'


### Access to the OLLMA/LLMA3 platform:
> check for "public dns", ex. ec2-xx-xx-xx-xx.ca-central-1.compute.amazonaws.com
> how-to ssh to the pulic dns: >ssh -i "YourKeyName.pem" ubuntu@ec2-xx-xx-xx-xx.ca-central-1.compute.amazonaws.com

### Run META AI Llama3:

> ollama run llama3

### Finally clean up

(option to destroy)
> terraform destroy
