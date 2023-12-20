#!/bin/bash

# Deploy VPC
aws cloudformation deploy --template-file templates/template-vpc.yaml --stack-name SharedSystemVPC --parameter-overrides VpcCidr="10.0.0.0/16" --profile account2

# Deploy VPN
aws cloudformation deploy --template-file templates/template-vpn.yaml --stack-name VPNClient --parameter-overrides VpcId="<SharedSystemVpcId>" --profile account2

# Deploy RDS
aws cloudformation deploy --template-file templates/template-rds.yaml --stack-name AuroraServerlessDB --parameter-overrides VpcId="<SharedSystemVpcId>" SubnetIds="<SharedSystemPrivateSubnetIds>" --profile account2
