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

