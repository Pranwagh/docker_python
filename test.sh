echo "i am that"
echo "123"
echo "456"
#aws ec2 describe-instances --region ap-south-1
aws ec2 describe-instances --query "Reservations[*].Instances[*].{Name:Tags[?Key=='Name']|[0].Value,InstanceId:InstanceId}" --output table --region ap-south-1

