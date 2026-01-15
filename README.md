# AZ-104 Lab – Secure Azure Blob Storage

This lab simulates deploying secure Azure Blob Storage into a non-production shared services subscription,
as you would typically see in an enterprise or MSP-managed Azure tenant.

The focus is on secure-by-default storage configuration using Terraform.

# Lab context
- Tenant type: Enterprise / MSP-managed
- Environment: Non-Production (Lab)
- Subscription: Shared Services
- Primary region: UK South

# Deploys
- Resource Group
- Storage Account (Standard, GRS)
- Public network access disabled
- Blob public access disabled
- Private Blob container
- Virtual Network and subnet for Private Endpoints
- Private Endpoint for Blob
- Private DNS Zone (privatelink.blob.core.windows.net) with VNet link

# Security choices
- No public network access: storage is not reachable from the internet
- Private Endpoint + Private DNS: access is via private IP inside the VNet
- Blob public access disabled: prevents anonymous containers or blobs
- HTTPS-only with TLS 1.2 enforced
- GRS replication for cross-region data durability

# How to run
```bash
terraform init
terraform plan
terraform apply
