
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "cc2e145c-fafd-4cd8-8d4d-168413d5f24f", // caf_platform_maintainers
              "f8d2a3a3-d58e-4d27-87a0-90abb9816206"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "cc2e145c-fafd-4cd8-8d4d-168413d5f24f", // caf_platform_maintainers
              "f8d2a3a3-d58e-4d27-87a0-90abb9816206"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "cc2e145c-fafd-4cd8-8d4d-168413d5f24f", // caf_platform_maintainers
              "f8d2a3a3-d58e-4d27-87a0-90abb9816206"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "f8d2a3a3-d58e-4d27-87a0-90abb9816206" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "cc2e145c-fafd-4cd8-8d4d-168413d5f24f", // caf_platform_maintainers
              "f8d2a3a3-d58e-4d27-87a0-90abb9816206"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "f8d2a3a3-d58e-4d27-87a0-90abb9816206" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
