# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to 2203.0

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t tannerwatsongmail.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/level1/alz/es \
  -tfstate_subscription_id 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -tfstate alz_es.tfstate \
  -env hchb \
  -level level1 \
  -p ${TF_DATA_DIR}/alz_es.tfstate.tfplan \
  -a plan

```

# Next steps

[Deploy asvm](../../level2/asvm/readme.md)
[Deploy Connectivity](../../level2/connectivity/virtual_wans/readme.md)
