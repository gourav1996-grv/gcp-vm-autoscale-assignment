#!/bin/bash
# Step 3: Create Managed Instance Group + Autoscaler
# Auto-scales between 1-3 VMs based on 60% CPU utilization

# Create the Managed Instance Group
gcloud compute instance-groups managed create assignment-mig \
  --project=vm-autoscale-assignment \
  --template=assignment-vm-template \
  --size=1 \
  --zone=us-central1-a

# Configure Autoscaler
gcloud compute instance-groups managed set-autoscaling assignment-mig \
  --project=vm-autoscale-assignment \
  --zone=us-central1-a \
  --min-num-replicas=1 \
  --max-num-replicas=3 \
  --target-cpu-utilization=0.60 \
  --cool-down-period=60

echo "MIG assignment-mig with CPU autoscaler created successfully."
