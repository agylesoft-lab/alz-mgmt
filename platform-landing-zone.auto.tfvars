/*
--- Built-in Replacements ---
*/

starter_locations = ["centralindia", "southindia"]

custom_replacements = {

  names = {

    # ---------------------------------------------------------
    # Security contact
    # ---------------------------------------------------------
    defender_email_security_contact = "messagefromgiri@yahoo.com"

    # ---------------------------------------------------------
    # COST-SAFE LAB SETTINGS
    # ---------------------------------------------------------

    # Global connectivity
    ddos_protection_plan_enabled = false

    # Primary connectivity
    primary_firewall_enabled                                             = false
    primary_firewall_sku_tier                                            = "Premium"
    primary_firewall_management_ip_enabled                               = false
    primary_virtual_network_gateway_express_route_enabled                = false
    primary_virtual_network_gateway_express_route_hobo_public_ip_enabled = false
    primary_virtual_network_gateway_vpn_enabled                          = false
    primary_private_dns_zones_enabled                                    = true
    primary_private_dns_auto_registration_zone_enabled                   = false
    primary_private_dns_resolver_enabled                                 = false
    primary_bastion_enabled                                              = false

    # Secondary connectivity
    secondary_firewall_enabled                                             = false
    secondary_firewall_sku_tier                                            = "Premium"
    secondary_firewall_management_ip_enabled                               = false
    secondary_virtual_network_gateway_express_route_enabled                = false
    secondary_virtual_network_gateway_express_route_hobo_public_ip_enabled = false
    secondary_virtual_network_gateway_vpn_enabled                          = false
    secondary_private_dns_zones_enabled                                    = false
    secondary_private_dns_auto_registration_zone_enabled                   = false
    secondary_private_dns_resolver_enabled                                 = false
    secondary_bastion_enabled                                              = false

    # ---------------------------------------------------------
    # Resource Group Names
    # ---------------------------------------------------------

    management_resource_group_name                 = "rg-management-$${starter_location_01}"
    connectivity_hub_primary_resource_group_name   = "rg-hub-$${starter_location_01}"
    connectivity_hub_secondary_resource_group_name = "rg-hub-$${starter_location_02}"
    dns_resource_group_name                        = "rg-hub-dns-$${starter_location_01}"
    ddos_resource_group_name                       = "rg-hub-ddos-$${starter_location_01}"
    asc_export_resource_group_name                 = "rg-asc-export-$${starter_location_01}"
    service_health_alerts_resource_group_name      = "rg-service-health-alerts-$${starter_location_01}"

    # ---------------------------------------------------------
    # Management Resource Names
    # ---------------------------------------------------------

    log_analytics_workspace_name            = "law-management-$${starter_location_01}"
    ddos_protection_plan_name               = "ddos-$${starter_location_01}"
    ama_user_assigned_managed_identity_name = "uami-management-ama-$${starter_location_01}"
    dcr_change_tracking_name                = "dcr-change-tracking"
    dcr_defender_sql_name                   = "dcr-defender-sql"
    dcr_vm_insights_name                    = "dcr-vm-insights"

    # ---------------------------------------------------------
    # Primary Connectivity Resource Names
    # ---------------------------------------------------------

    primary_virtual_network_name                                 = "vnet-hub-$${starter_location_01}"
    primary_firewall_name                                        = "fw-hub-$${starter_location_01}"
    primary_firewall_policy_name                                 = "fwp-hub-$${starter_location_01}"
    primary_firewall_public_ip_name                              = "pip-fw-hub-$${starter_location_01}"
    primary_firewall_management_public_ip_name                   = "pip-fw-hub-mgmt-$${starter_location_01}"
    primary_route_table_firewall_name                            = "rt-hub-fw-$${starter_location_01}"
    primary_route_table_user_subnets_name                        = "rt-hub-std-$${starter_location_01}"
    primary_virtual_network_gateway_express_route_name           = "vgw-hub-er-$${starter_location_01}"
    primary_virtual_network_gateway_express_route_public_ip_name = "pip-vgw-hub-er-$${starter_location_01}"
    primary_virtual_network_gateway_vpn_name                     = "vgw-hub-vpn-$${starter_location_01}"
    primary_virtual_network_gateway_vpn_public_ip_name_1         = "pip-vgw-hub-vpn-$${starter_location_01}-001"
    primary_virtual_network_gateway_vpn_public_ip_name_2         = "pip-vgw-hub-vpn-$${starter_location_01}-002"
    primary_private_dns_resolver_name                            = "pdr-hub-dns-$${starter_location_01}"
    primary_bastion_host_name                                    = "bas-hub-$${starter_location_01}"
    primary_bastion_host_public_ip_name                          = "pip-bastion-hub-$${starter_location_01}"

    # ---------------------------------------------------------
    # Secondary Connectivity Resource Names
    # ---------------------------------------------------------

    secondary_virtual_network_name                                 = "vnet-hub-$${starter_location_02}"
    secondary_firewall_name                                        = "fw-hub-$${starter_location_02}"
    secondary_firewall_policy_name                                 = "fwp-hub-$${starter_location_02}"
    secondary_firewall_public_ip_name                              = "pip-fw-hub-$${starter_location_02}"
    secondary_firewall_management_public_ip_name                   = "pip-fw-hub-mgmt-$${starter_location_02}"
    secondary_route_table_firewall_name                            = "rt-hub-fw-$${starter_location_02}"
    secondary_route_table_user_subnets_name                        = "rt-hub-std-$${starter_location_02}"
    secondary_virtual_network_gateway_express_route_name           = "vgw-hub-er-$${starter_location_02}"
    secondary_virtual_network_gateway_express_route_public_ip_name = "pip-vgw-hub-er-$${starter_location_02}"
    secondary_virtual_network_gateway_vpn_name                     = "vgw-hub-vpn-$${starter_location_02}"
    secondary_virtual_network_gateway_vpn_public_ip_name_1         = "pip-vgw-hub-vpn-$${starter_location_02}-001"
    secondary_virtual_network_gateway_vpn_public_ip_name_2         = "pip-vgw-hub-vpn-$${starter_location_02}-002"
    secondary_private_dns_resolver_name                            = "pdr-hub-dns-$${starter_location_02}"
    secondary_bastion_host_name                                    = "bas-hub-$${starter_location_02}"
    secondary_bastion_host_public_ip_name                          = "pip-bastion-hub-$${starter_location_02}"

    # ---------------------------------------------------------
    # DNS Names
    # ---------------------------------------------------------

    primary_auto_registration_zone_name   = "$${starter_location_01}.azure.local"
    secondary_auto_registration_zone_name = "$${starter_location_02}.azure.local"

    # ---------------------------------------------------------
    # Primary Hub Addressing
    # ---------------------------------------------------------

    primary_hub_address_space                          = "10.0.0.0/16"
    primary_hub_virtual_network_address_space          = "10.0.0.0/22"
    primary_firewall_subnet_address_prefix             = "10.0.0.0/26"
    primary_firewall_management_subnet_address_prefix  = "10.0.0.192/26"
    primary_bastion_subnet_address_prefix              = "10.0.0.64/26"
    primary_gateway_subnet_address_prefix              = "10.0.0.128/27"
    primary_private_dns_resolver_subnet_address_prefix = "10.0.0.160/28"

    # ---------------------------------------------------------
    # Secondary Hub Addressing
    # ---------------------------------------------------------

    secondary_hub_address_space                          = "10.1.0.0/16"
    secondary_hub_virtual_network_address_space          = "10.1.0.0/22"
    secondary_firewall_subnet_address_prefix             = "10.1.0.0/26"
    secondary_firewall_management_subnet_address_prefix  = "10.1.0.192/26"
    secondary_bastion_subnet_address_prefix              = "10.1.0.64/26"
    secondary_gateway_subnet_address_prefix              = "10.1.0.128/27"
    secondary_private_dns_resolver_subnet_address_prefix = "10.1.0.160/28"
  }

  # -----------------------------------------------------------
  # Resource Group IDs
  # -----------------------------------------------------------

  resource_group_identifiers = {
    management_resource_group_id             = "/subscriptions/$${subscription_id_management}/resourcegroups/$${management_resource_group_name}"
    ddos_protection_plan_resource_group_id   = "/subscriptions/$${subscription_id_connectivity}/resourcegroups/$${ddos_resource_group_name}"
    primary_connectivity_resource_group_id   = "/subscriptions/$${subscription_id_connectivity}/resourceGroups/$${connectivity_hub_primary_resource_group_name}"
    secondary_connectivity_resource_group_id = "/subscriptions/$${subscription_id_connectivity}/resourceGroups/$${connectivity_hub_secondary_resource_group_name}"
    dns_resource_group_id                    = "/subscriptions/$${subscription_id_connectivity}/resourceGroups/$${dns_resource_group_name}"
  }

  # -----------------------------------------------------------
  # Resource IDs
  # -----------------------------------------------------------

  resource_identifiers = {
    ama_change_tracking_data_collection_rule_id = "$${management_resource_group_id}/providers/Microsoft.Insights/dataCollectionRules/$${dcr_change_tracking_name}"
    ama_mdfc_sql_data_collection_rule_id        = "$${management_resource_group_id}/providers/Microsoft.Insights/dataCollectionRules/$${dcr_defender_sql_name}"
    ama_vm_insights_data_collection_rule_id     = "$${management_resource_group_id}/providers/Microsoft.Insights/dataCollectionRules/$${dcr_vm_insights_name}"
    ama_user_assigned_managed_identity_id       = "$${management_resource_group_id}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/$${ama_user_assigned_managed_identity_name}"
    log_analytics_workspace_id                  = "$${management_resource_group_id}/providers/Microsoft.OperationalInsights/workspaces/$${log_analytics_workspace_name}"
    ddos_protection_plan_id                     = "$${ddos_protection_plan_resource_group_id}/providers/Microsoft.Network/ddosProtectionPlans/$${ddos_protection_plan_name}"
  }
}

tags = {
  deployed_by = "terraform"
  source      = "Azure Landing Zones Accelerator"
}

# =============================================================
# MANAGEMENT RESOURCES
# =============================================================

management_resources_enabled = true

management_resource_settings = {

  location                     = "$${starter_location_01}"
  log_analytics_workspace_name = "$${log_analytics_workspace_name}"
  resource_group_name          = "$${management_resource_group_name}"

  user_assigned_managed_identities = {

    ama = {
      name = "$${ama_user_assigned_managed_identity_name}"
    }
  }

  data_collection_rules = {

    change_tracking = {
      name = "$${dcr_change_tracking_name}"
    }

    defender_sql = {
      name = "$${dcr_defender_sql_name}"
    }

    vm_insights = {
      name = "$${dcr_vm_insights_name}"
    }
  }
}

# =============================================================
# MANAGEMENT GROUPS + AZURE POLICY
# =============================================================

management_groups_enabled = true

management_group_settings = {

  architecture_name  = "alz_custom"
  location           = "$${starter_location_01}"
  parent_resource_id = "$${root_parent_management_group_id}"

  policy_default_values = {
    ama_change_tracking_data_collection_rule_id = "$${ama_change_tracking_data_collection_rule_id}"
    ama_mdfc_sql_data_collection_rule_id        = "$${ama_mdfc_sql_data_collection_rule_id}"
    ama_vm_insights_data_collection_rule_id     = "$${ama_vm_insights_data_collection_rule_id}"
    ama_user_assigned_managed_identity_id       = "$${ama_user_assigned_managed_identity_id}"
    ama_user_assigned_managed_identity_name     = "$${ama_user_assigned_managed_identity_name}"
    log_analytics_workspace_id                  = "$${log_analytics_workspace_id}"
    ddos_protection_plan_id                     = "$${ddos_protection_plan_id}"
    private_dns_zone_subscription_id            = "$${subscription_id_connectivity}"
    private_dns_zone_region                     = "$${starter_location_01}"
    private_dns_zone_resource_group_name        = "$${dns_resource_group_name}"
    resource_group_name_service_health_alerts   = "$${service_health_alerts_resource_group_name}"
    resource_group_name_mdfc                    = "$${asc_export_resource_group_name}"
    resource_group_location                     = "$${starter_location_01}"
    email_security_contact                      = "$${defender_email_security_contact}"
  }

  # -----------------------------------------------------------
  # SINGLE-SUBSCRIPTION LAB
  #
  # A subscription can only be under one Management Group.
  #
  # Therefore our one subscription goes under Management.
  # Identity, Connectivity and Security MGs remain empty.
  # -----------------------------------------------------------

  subscription_placement = {

    management = {
      subscription_id       = "$${subscription_id_management}"
      management_group_name = "management"
    }
  }

  policy_assignments_to_modify = {

    alz = {

      policy_assignments = {

        Deploy-MDFC-Config-H224 = {

          parameters = {

            enableAscForServers = "DeployIfNotExists"

            enableAscForServersVulnerabilityAssessments = "DeployIfNotExists"

            enableAscForSql = "DeployIfNotExists"

            enableAscForAppServices = "DeployIfNotExists"

            enableAscForStorage = "DeployIfNotExists"

            enableAscForContainers = "DeployIfNotExists"

            enableAscForKeyVault = "DeployIfNotExists"

            enableAscForSqlOnVm = "DeployIfNotExists"

            enableAscForArm = "DeployIfNotExists"

            enableAscForOssDb = "DeployIfNotExists"

            enableAscForCosmosDbs = "DeployIfNotExists"

            enableAscForCspm = "DeployIfNotExists"
          }
        }
      }
    }
  }
}

# =============================================================
# CONNECTIVITY
# =============================================================

connectivity_type = "hub_and_spoke_vnet"

connectivity_resource_groups = {

  # DDoS disabled
  ddos = {
    name     = "$${ddos_resource_group_name}"
    location = "$${starter_location_01}"

    settings = {
      enabled = false
    }
  }

  # Keep PRIMARY hub
  vnet_primary = {
    name     = "$${connectivity_hub_primary_resource_group_name}"
    location = "$${starter_location_01}"

    settings = {
      enabled = true
    }
  }

  # SECONDARY hub disabled
  vnet_secondary = {
    name     = "$${connectivity_hub_secondary_resource_group_name}"
    location = "$${starter_location_02}"

    settings = {
      enabled = false
    }
  }

  # DNS RG disabled
  dns = {
    name     = "$${dns_resource_group_name}"
    location = "$${starter_location_01}"

    settings = {
      enabled = true
    }
  }
}

hub_and_spoke_networks_settings = {

  enabled_resources = {
    ddos_protection_plan = false
  }

  ddos_protection_plan = {
    name                = "$${ddos_protection_plan_name}"
    resource_group_name = "$${ddos_resource_group_name}"
    location            = "$${starter_location_01}"
  }
}

# =============================================================
# PRIMARY HUB
# =============================================================

hub_virtual_networks = {

  primary = {

    location          = "$${starter_location_01}"
    default_parent_id = "$${primary_connectivity_resource_group_id}"

    enabled_resources = {

      firewall                              = false
      bastion                               = false
      virtual_network_gateway_express_route = false
      virtual_network_gateway_vpn           = false
      private_dns_zones                     = true
      private_dns_resolver                  = false
    }

    hub_virtual_network = {

      name = "$${primary_virtual_network_name}"

      address_space = [
        "$${primary_hub_virtual_network_address_space}"
      ]

      routing_address_space = [
        "$${primary_hub_address_space}"
      ]

      route_table_name_firewall = "$${primary_route_table_firewall_name}"

      route_table_name_user_subnets = "$${primary_route_table_user_subnets_name}"

      subnets = {}
    }

    firewall = {

      subnet_address_prefix = "$${primary_firewall_subnet_address_prefix}"

      management_subnet_address_prefix = "$${primary_firewall_management_subnet_address_prefix}"

      name = "$${primary_firewall_name}"

      sku_tier = "$${primary_firewall_sku_tier}"

      default_ip_configuration = {

        public_ip_config = {
          name = "$${primary_firewall_public_ip_name}"
        }
      }

      management_ip_enabled = false

      management_ip_configuration = {

        public_ip_config = {
          name = "$${primary_firewall_management_public_ip_name}"
        }
      }
    }

    firewall_policy = {

      name = "$${primary_firewall_policy_name}"
      sku  = "$${primary_firewall_sku_tier}"
    }

    virtual_network_gateways = {

      subnet_address_prefix = "$${primary_gateway_subnet_address_prefix}"

      express_route = {

        name = "$${primary_virtual_network_gateway_express_route_name}"

        hosted_on_behalf_of_public_ip_enabled = false

        ip_configurations = {

          default = {

            public_ip = {
              name = "$${primary_virtual_network_gateway_express_route_public_ip_name}"
            }
          }
        }
      }

      vpn = {

        name = "$${primary_virtual_network_gateway_vpn_name}"

        ip_configurations = {

          active_active_1 = {

            public_ip = {
              name = "$${primary_virtual_network_gateway_vpn_public_ip_name_1}"
            }
          }

          active_active_2 = {

            public_ip = {
              name = "$${primary_virtual_network_gateway_vpn_public_ip_name_2}"
            }
          }
        }
      }
    }

    private_dns_zones = {

      parent_id = "$${dns_resource_group_id}"

      private_link_private_dns_zones_regex_filter = {
        enabled = false
      }

      auto_registration_zone_enabled = false

      auto_registration_zone_name = "$${primary_auto_registration_zone_name}"
    }

    private_dns_resolver = {

      subnet_address_prefix = "$${primary_private_dns_resolver_subnet_address_prefix}"

      name = "$${primary_private_dns_resolver_name}"
    }

    bastion = {

      subnet_address_prefix = "$${primary_bastion_subnet_address_prefix}"

      name = "$${primary_bastion_host_name}"

      bastion_public_ip = {

        name = "$${primary_bastion_host_public_ip_name}"
      }
    }
  }




}

enable_telemetry = true

telemetry_additional_content = {

  deployed_by = "alz-terraform-accelerator"

  correlation_id = "00000000-0000-0000-0000-000000000000"
}
