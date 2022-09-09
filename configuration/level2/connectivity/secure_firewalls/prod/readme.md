
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t tannerwatsongmail.onmicrosoft.com

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/secure_firewalls/prod \
  -tfstate_subscription_id 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -target_subscription 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -tfstate connectivity_secure_firewalls_prod.tfstate \
  -env hchb \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_secure_firewalls_prod.tfstate.tfplan \
  -a plan

```

