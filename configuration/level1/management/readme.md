
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t tannerwatsongmail.onmicrosoft.com -s 19a60670-ab75-487f-b66e-8f0651bf7287

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/management \
  -tfstate_subscription_id 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -target_subscription 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -tfstate management.tfstate \
  -env hchb \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
