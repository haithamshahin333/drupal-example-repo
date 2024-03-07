# Initial README


# Steps to initialize Azure Environment:

1. Create an ACR Instance and run `az acr build . -r REGISTRY_NAME -g RG_NAME . -t custom-drupal:v1`

2. Create a fileshare/storage account as shown in `infra-script.sh`

3. Upload sites directory to file share

# Resources
- https://www.drupal.org/docs/administering-a-drupal-site/configuration-management/workflow-using-drush