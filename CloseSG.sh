IP=$(curl http://checkip.amazonaws.com)/32
echo $IP of CodeBuild Instance
aws ec2 revoke-security-group-ingress --group-id sg-a1d565de --protocol tcp --port 80 --cidr $IP --region us-east-1
