#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "hchb"
    create_alias    = false
    subscription_id = "19a60670-ab75-487f-b66e-8f0651bf7287"
  }
  identity = {
    name            = "hchb"
    create_alias    = false
    subscription_id = "19a60670-ab75-487f-b66e-8f0651bf7287"
  }
  connectivity = {
    name            = "hchb"
    create_alias    = false
    subscription_id = "19a60670-ab75-487f-b66e-8f0651bf7287"
  }
  management = {
    name            = "hchb"
    create_alias    = false
    subscription_id = "19a60670-ab75-487f-b66e-8f0651bf7287"
  }
}