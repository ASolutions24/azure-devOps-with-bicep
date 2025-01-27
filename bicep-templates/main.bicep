// Parameters

// All
param location string = resourceGroup().location

param tags object

// Subnet
param vnetName string

param addressPrefixes array

param ipSubnets array

// Bastion
param bastionPubIpName string

param bastionName string


// Run
module vnet '../../a/git-modules/content/modules/vnet/vnet.bicep' = {
  name: 'vnetDeploy'
  params: {
    location: location
    tags: tags
    ipSubnets: ipSubnets
    vnetName: vnetName
    addressPrefixes: addressPrefixes
  }
}

/*module bastion '../../a/git-modules/content/modules/bastion/bastionhost.bicep' = {
  name: 'bastionDeploy'
  params: {
    bastionPubIpName: bastionPubIpName
    bastionName: bastionName
    location: location
    tags: tags
    vnetId: vnet.outputs.vnetId
  }
}
*/
