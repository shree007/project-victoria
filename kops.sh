export KOPS_STATE_STORE=s3://victoria-kops-bucket
export CLUSTER_NAME=victoria.k8s.local

kops create cluster \
  --name=${CLUSTER_NAME} \
  --zones=us-east-1a,us-east-1b \
  --node-count=3 \
  --node-size=m5.xlarge \
  --master-size=m5.xlarge \
  --master-zones=us-east-1a \
  --networking=cilium \
  --dns=private

