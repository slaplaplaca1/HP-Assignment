# Spencer's tf code

- Cloud After Dark took requirements from https://docs.google.com/document/d/1h9uSRNZbpzKQBnab4gqthKoCAPyUGgIlLZIZ8TJojwk/edit and codified it in terraform
- See links to all Terraform modules below
- See links to all Terraform documentation below
- It's like ✨Magic ✨:D

## Features

- Each resource in Terraform is broken down into a .tf configuration file. This makes the code cleaner easier to troubleshoot and easier to read and understand
- A variables.tf file hold all the variable configuration
- A my.tfvars holds all the values to your terraform variables
- The terraform code automatically uses variables for your awscli configuration
- This code uses a local terraform state file

## Configurations

Configurations and links below:

- [ec2.tf] - Provides an EC2 instance resource. This allows instances to be created, updated, and deleted. Instances also support provisioning.
- [egress_gw.tf] - [IPv6 only] Creates an egress-only Internet gateway for your VPC. An egress-only Internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the Internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.
- [inet_gateway.tf] - Provides a resource to create a VPC Internet Gateway.
- [keypair.tf] - Provides an EC2 key pair resource. A key pair is used to control login access to EC2 instances. **see more info below
- [provider.tf] -Terraform relies on plugins called "providers" to interact with remote systems.
- [route_table.tf] - Provides a resource to create a VPC routing table.
- [route_table_assocation.tf] - Provides a resource for managing the main routing table of a VPC.
- [security_group.tf] - Provides a security group resource.
- [subnet.tf] - Provides an VPC subnet resource.
- [vpc.tf] - Provides a resource to manage the default AWS VPC in the current region.
- [variables.tf] - Input variables serve as parameters for a Terraform module, allowing aspects of the module to be customized without altering the module's own source code, and allowing modules to be shared between different configurations.
- [my.tfvars] - Defined variables
- [installhoneypot.sh] - A bash script used to bootstrap ec2 to install honeypot
- [my.tfvars] - Defined variables

## Installation

1. First you need to do a terraform init.
2. Next you need to do a terraform plan and pass it your variables file. Ex:
terraform plan -var-file my.tfvars
3. Finally you need to do a terraform apply to apply you infrastructure. Ex:
terraform apply -var-file my.tfvars

## Considerations

You need to change the following in your code

| Change | Configuration |
| ------ | ------ |
| Security group ips| securitygroup.tf |
| keypair value | keypair.tf |
| keypair value variable| my.tfvars |

## Additional Notes

You need to change the IP to your personal IP address ending in /32 in the security group

You need to create your own keypair. You can find info on this here: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws

Your terraform code using a honeypotinstall.sh bash script to configure your ec2. More info on file provisioners can be found here: https://www.terraform.io/docs/language/resources/provisioners/file.html

   [ec2.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/instance>
   [egress_gw.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/egress_only_internet_gateway>
   [inet_gateway.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/internet_gateway>
   [keypair.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/key_pair>
   [provider.tf]: <https://www.terraform.io/docs/language/providers/configuration.html>
   [route_table.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/route_table>
   [route_table_assocation.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/main_route_table_association>
   [security_group.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/security_group>
   [subnet.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/subnet>
   [vpc.tf]: <https://registry.terraform.io/providers/hashicorp/aws/3.58.0/docs/resources/default_vpc>
   [variables.tf]: <https://www.terraform.io/docs/language/values/variables.html>
   [my.tfvars]: <https://www.terraform.io/docs/language/values/variables.html>
   [installhoneypot.sh]: <https://github.security.telekom.com/2020/08/honeypot-tpot-20.06-released.html#terraform>

