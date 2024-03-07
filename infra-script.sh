# Create Storage Account and Fileshare
az storage account create --name $STG_NAME --resource-group $RG_NAME --location $LOCATION --sku Standard_LRS

# Create FileShare
az storage share create --name $FILESHARE_NAME --account-name $STG_NAME

# Upload files directory - azcopy is preferred to this approach for performance
az storage file upload-batch --source "./drupal-src/web/sites" --destination $FILESHARE_NAME --account-name $STG_NAME