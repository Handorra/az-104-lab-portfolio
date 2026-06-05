#Resource Group Deployment
#Creates a resource group called  rg-az104-lab in westus2
New-AzResourceGroup -Name rg-az104-lab -Location westus2

#set rg-az104-lab as default resource Group
Set-AzDefault -ResourceGroupName rg-az104-lab

#creating a resource group deployment
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="blanktemplate-"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile

#deploy the updated ARM template
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addstorage-"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile

#deploy the updated ARM template that includes parameters for dynamic storage naming depending on storage account type
$templateFile="azuredeploy.json"
New-AzResourceGroupDeployment -Name testdeployment1 -TemplateFile $templateFile -storageAccountType Standard_LRS

#deploy the updated ARM template that includes outputs 
New-AzResourceGroupDeployment -Name testdeployment1 -TemplateFile $templateFile -storageAccountType Standard_LRS

#deploy the updated ARM template that includes a parameter for storageName
$templateFile="azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addnameparameter-"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile -storageName staz2

#deploy the updated ARM template that includes a parameter for storageSKU
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="addSkuParameter-"+"$today"
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile -storageName {your-unique-name} -storageSKU Standard_GRS