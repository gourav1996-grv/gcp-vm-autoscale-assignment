#!/bin/bash
# Step 2: Create Instance Template
# Used by Managed Instance Group for auto-scaling

gcloud compute instance-templates create assignment-vm-template \
  --project=vm-autoscale-assignment \
  --region=us-central1 \
  --machine-type=e2-medium \
  --image-family=debian-12 \
  --image-project=debian-cloud \
  --boot-disk-size=10GB \
  --boot-disk-type=pd-balanced \
  --tags=http-server,https-server

echo "Instance template assignment-vm-template created successfully."
