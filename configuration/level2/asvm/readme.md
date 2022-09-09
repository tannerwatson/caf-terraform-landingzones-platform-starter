# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t tannerwatsongmail.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -target_subscription 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env hchb \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

