#!/bin/bash
# Step 1: Create VM Instance on GCP
# Project: vm-autoscale-assignment

gcloud compute instances create assignment-vm-1 \
  --project=vm-autoscale-assignment \
  --zone=us-central1-a \
  --machine-type=e2-medium \
  --image-family=debian-12 \
  --image-project=debian-cloud \
  --boot-disk-size=10GB \
  --boot-disk-type=pd-balanced \
  --tags=http-server,https-server \
  --metadata=enable-oslogin=true

echo "VM instance assignment-vm-1 created successfully."
