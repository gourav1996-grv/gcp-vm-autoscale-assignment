#!/bin/bash
# Step 5: Configure Firewall Rules
# Allow SSH (port 22) and Deny Telnet (port 23)

PROJECT_ID="vm-autoscale-assignment"

# Allow SSH traffic
gcloud compute firewall-rules create allow-ssh-rule \
  --project=$PROJECT_ID \
  --direction=INGRESS \
  --action=ALLOW \
  --rules=tcp:22 \
  --source-ranges=0.0.0.0/0 \
  --target-tags="" \
  --priority=1000 \
  --description="Allow SSH access on port 22"

# Deny Telnet traffic
gcloud compute firewall-rules create deny-telnet-rule \
  --project=$PROJECT_ID \
  --direction=INGRESS \
  --action=DENY \
  --rules=tcp:23 \
  --source-ranges=0.0.0.0/0 \
  --priority=1000 \
  --description="Deny insecure Telnet access on port 23"

echo "Firewall rules created successfully."
