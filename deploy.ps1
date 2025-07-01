# Connect to Azure account
Connect-AzAccount

# Set variables
$resourceGroupName = "MyResourceGroup"
$location = "westeurope"
$templateFile = "azuredeploy.json"
$parametersFile = "azuredeploy.parameters.json"

# Create the resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Deploy the ARM template
New-AzResourceGroupDeployment `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parametersFile
