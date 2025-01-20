# Variables
resourceGroupName="AutoResourceGroup"
location="eastus"
vmNamePrefix="AutoVM"
vmSize="Standard_B1s"
image="Ubuntu2404pro"
adminUsername="dylnich"
adminPassword="P@ssword1234"

# Loop to create VMs
for i in {1..3}
do
    vmName="$vmNamePrefix$i"
    az vm create \
        --resource-group $resourceGroupName \
        --name $vmName \
        --image $image \
        --size $vmSize \
        --admin-username $adminUsername \
        --admin-password $adminPassword \
        --output table
done
