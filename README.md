# AZ-104 Lab 4 – Implement Virtual Networking

## Description
This repository contains the completed lab for **AZ-104: Microsoft Azure Administrator**, specifically **Lab 04: Implement Virtual Networking**.

The lab demonstrates how to:
- Deploy a Virtual Network (VNet) and subnets using an ARM template
- Use Azure Resource Manager (ARM) templates for infrastructure as code
- Work with Azure CLI and PowerShell deployment options

## Files
- `azuredeploy.json` – ARM template to define network infrastructure
- `azuredeploy.parameters.json` – Parameters file for template deployment
- `deploy.ps1` – Optional PowerShell script to deploy the template

## How to Deploy

### Using Azure CLI
```bash
az login

az group create --name MyResourceGroup --location westeurope

az deployment group create \
  --resource-group MyResourceGroup \
  --template-file azuredeploy.json \
  --parameters azuredeploy.parameters.json
```

### Using PowerShell
```powershell
Connect-AzAccount

New-AzResourceGroup -Name MyResourceGroup -Location westeurope

New-AzResourceGroupDeployment \`
  -ResourceGroupName MyResourceGroup \`
  -TemplateFile azuredeploy.json \`
  -TemplateParameterFile azuredeploy.parameters.json
```

## Source
Based on [Microsoft Learn Lab Instructions](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/Instructions/Labs/LAB_04-Implement_Virtual_Networking.html)
