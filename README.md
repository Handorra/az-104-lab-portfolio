# AZ-104 Azure Administrator Lab Portfolio

A hands-on lab portfolio built while studying for the **Microsoft AZ-104: Azure Administrator Associate** certification. Each lab is deployed using Infrastructure as Code (Bicep or ARM templates) and documented with real-world context — not just "what I did," but why it matters in a production environment.

> **Goal:** Transition into a cloud security role by demonstrating practical Azure skills alongside exam knowledge.

---

## About Me

I have an IT background and am currently building hands-on Azure experience through self-directed labs using a personal Azure test account. This repository tracks my progress through the AZ-104 exam domains and serves as a working portfolio for cloud/DevOps roles.

---

## Lab Progress

| Domain | Status | Lab Folder |
|---|---|---|
| Identity & Access Management (IAM) | 🔜 Coming soon | `/identity` |
| Governance & Compliance | 🔜 Coming soon | `/governance` |
| Azure Storage | 🔜 Coming soon | `/storage` |
| Virtual Machines & Compute | 🔜 Coming soon | `/compute` |
| Networking (VNets, NSGs, Peering) | 🔜 Coming soon | `/networking` |
| Monitoring & Backup | 🔜 Coming soon | `/monitoring` |

---

## Repository Structure

```
azure-certs-lab/
├── identity/           # RBAC, Azure AD users/groups, custom roles
├── governance/         # Azure Policy, Management Groups, tagging
├── storage/            # Storage accounts, lifecycle policies, SAS tokens
├── compute/            # VMs, Scale Sets, custom script extensions
├── networking/         # VNets, subnets, NSGs, VNet peering, Bastion
├── monitoring/         # Log Analytics, alerts, diagnostic settings
└── README.md
```

Each folder contains:
- `README.md` — what the lab covers, what I learned, and real-world context
- `main.bicep` or `azuredeploy.json` — Infrastructure as Code template
- `parameters.json` — deployment parameters (no secrets committed)
- `deploy.ps1` or `deploy.sh` — deployment script

---

## Tools & Technologies

- **Cloud:** Microsoft Azure
- **IaC:** Azure Bicep, ARM Templates
- **CLI:** Azure CLI, Azure PowerShell
- **Version Control:** Git / GitHub
- **Exam:** AZ-104 Microsoft Azure Administrator (in progress)

---

## How to Deploy a Lab

Each lab folder has its own README with specific instructions. The general pattern is:

```bash
# Log in to Azure
az login

# Deploy a template
az deployment group create \
  --resource-group <your-rg-name> \
  --template-file main.bicep \
  --parameters @parameters.json
```

> **Note:** All templates are built for a test/learning environment. Review parameters before deploying to any production subscription.

---

## Learning Log

I'm documenting key takeaways as I go. Check individual lab READMEs for notes on:
- What the service does and when you'd use it
- Gotchas I ran into and how I fixed them
- How the lab connects to real-world scenarios

---

## Certification Target

**Microsoft Certified: Azure Administrator Associate (AZ-104)**
- Exam registration: *in progress*
- Target date: *TBD*

---

## Connect

Feel free to reach out if you're also studying for AZ-104 or working in cloud/DevOps.

[LinkedIn](https://www.linkedin.com/in/hannah-huynh-b0972a226/) · [GitHub](https://github.com/handorra)
