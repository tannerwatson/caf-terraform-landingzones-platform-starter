
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "hchb"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "f8d2a3a3-d58e-4d27-87a0-90abb9816206"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "c7b5ad7d-de55-4680-afa0-6bb3c48eee1e"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "cc2e145c-fafd-4cd8-8d4d-168413d5f24f"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "hchb"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "f8d2a3a3-d58e-4d27-87a0-90abb9816206"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "c7b5ad7d-de55-4680-afa0-6bb3c48eee1e"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "cc2e145c-fafd-4cd8-8d4d-168413d5f24f"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
