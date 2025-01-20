#Deploy a network Security group

az network nsg create \
    --resource-group AutoResourceGroup \
    --name AutoSecurityGroup

az network vnet subnet update \
    --nvet-name AutoVNet \
    --name AutoSubnet \
    --resource-group AutoResourceGroup \
    --network-security-group AutoNSG