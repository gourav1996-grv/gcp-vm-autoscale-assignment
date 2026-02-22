#!/bin/bash
# Step 4: Configure IAM Roles for Restricted Access
# Principle of Least Privilege - Viewer roles only

PROJECT_ID="vm-autoscale-assignment"
USER_EMAIL="m25ai2085@iitj.ac.in"

# Assign Compute Viewer role
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="user:$USER_EMAIL" \
  --role="roles/compute.viewer"

# Assign Monitoring Viewer role
gcloud projects add-iam-policy-binding $PROJECT_ID \
  --member="user:$USER_EMAIL" \
  --role="roles/monitoring.viewer"

echo "IAM roles assigned to $USER_EMAIL successfully."
