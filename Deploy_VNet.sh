#Deploy a VNet

#!/bin/bash

az network vnet create \
    --name AutoVNet \
    --resource-group AutoResourceGroup \
    --address-prefix 10.0.0.0/16 \
    --subnet-name AutoSubnet \
    --subnet-prefix 10.0.1.0/24
