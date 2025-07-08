# workspace-project
workspace project 
# The use of workspaces in terraform project 
# Terraform workspace are isolated instances of state data that enable you to manage mulitple environment # with the same configuration.
# characteristics of workspaces
# each name has it own state file
# The workspace name servers as a unique identifier
# BENEFIT OF WORKSPACE
# Environment isolation
# simplified  multi environment
# reduced error
-------------------------------------------------
# this code contain 2 ec2, 1 RDS msql , backend for states
# command run 
# terraform workspace select dev
# terraform workspace select stage
# terraform workspace select prod
 # To switch to workspace 
 # terraform workspace new stage
 # to view workspace list 
 # terraform workspace list 
--------------------------------------
# 18 resouces was created
# VPC, 2 Subnet, Internet gateway, 2 Route table, NAT gateway, 2 EC2, MySql, security Group. 