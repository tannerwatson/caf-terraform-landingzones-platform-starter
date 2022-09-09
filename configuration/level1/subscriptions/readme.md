
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription hchb with the user tannerwatson_gmail.com#EXT#@tannerwatsongmail.onmicrosoft.com
rover login -t tannerwatsongmail.onmicrosoft.com -s 19a60670-ab75-487f-b66e-8f0651bf7287

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 19a60670-ab75-487f-b66e-8f0651bf7287 \
  -tfstate platform_subscriptions.tfstate \
  -env hchb \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)