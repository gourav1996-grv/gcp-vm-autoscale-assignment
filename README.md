# GCP VM Auto-Scaling & Security Assignment

## Assignment 2 — Virtualization and Cloud Computing
**Student:** Gourav Ray (M25AI2085)  
**Platform:** Google Cloud Platform  
**Project:** vm-autoscale-assignment  

## Objective
Set up a VM on GCP, implement CPU-based auto-scaling, and configure 
security with IAM roles and firewall rules.

## Infrastructure Overview
| Resource | Name | Details |
|---|---|---|
| VM Instance | assignment-vm-1 | e2-medium, Debian 12, us-central1-a |
| Instance Template | assignment-vm-template | Blueprint for auto-scaling |
| Managed Instance Group | assignment-mig | Stateless, Single Zone |
| Autoscaler | CPU-based | 60% target, Min 1, Max 3 |
| IAM | Compute Viewer + Monitoring Viewer | Restricted access |
| Firewall Allow | allow-ssh-rule | TCP Port 22 |
| Firewall Deny | deny-telnet-rule | TCP Port 23 |

## Deployment Scripts
| Script | Purpose |
|---|---|
| vm-setup.sh | Creates the VM instance |
| instance-template.sh | Creates the instance template |
| mig-autoscaler.sh | Creates MIG + configures autoscaler |
| iam-setup.sh | Assigns IAM roles |
| firewall-rules.sh | Creates firewall allow/deny rules |

## How to Run

# Set your project
gcloud config set project vm-autoscale-assignment

# Run scripts in order
bash vm-setup.sh
bash instance-template.sh
bash mig-autoscaler.sh
bash iam-setup.sh
bash firewall-rules.sh

***


