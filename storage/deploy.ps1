#Resource Group Deployment
#Creates a resource group called  rg-az104-lab in westus2
New-AzResourceGroup -Name rg-az104-lab -Location westus2

#set rg-az104-lab as default resource Group
Set-AzDefault -ResourceGroupName rg-az104-lab


