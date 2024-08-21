
copy-item "$env:System_ArtifactsDirectory/git-modules" "$env:System_ArtifactsDirectory/a/git-modules" -recurse #this is required to use same relative path for module reference in modules.bicep
$TemplateParameterFile = "$env:System_ArtifactsDirectory"+ "/content/bicep-templates/main.parameters.json"
$TemplateFile = "$env:System_ArtifactsDirectory"+ "/content/bicep-templates/main.bicep"

$ResourceGroupName = "RG-Bicep-DevOps-Demo"
Get-AzResourceGroup | Format-Table
New-AzResourceGroupDeployment -TemplateFile $TemplateFile -TemplateParameterFile $TemplateParameterFile -ResourceGroupName $ResourceGroupName -Whatif
