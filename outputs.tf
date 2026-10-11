output "openid_client_permissions_id" {
  description = "Map of id values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no id are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "openid_client_permissions_authorization_resource_server_id" {
  description = "Map of authorization_resource_server_id values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no authorization_resource_server_id are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.authorization_resource_server_id if v.authorization_resource_server_id != null && length(v.authorization_resource_server_id) > 0 }
}
output "openid_client_permissions_client_id" {
  description = "Map of client_id values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no client_id are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "openid_client_permissions_configure_scope" {
  description = "Map of configure_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no configure_scope are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.configure_scope) if v.configure_scope != null && length(v.configure_scope) > 0 }
}
output "openid_client_permissions_enabled" {
  description = "Map of enabled values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no enabled are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.enabled if v.enabled != null }
}
output "openid_client_permissions_manage_scope" {
  description = "Map of manage_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no manage_scope are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.manage_scope) if v.manage_scope != null && length(v.manage_scope) > 0 }
}
output "openid_client_permissions_map_roles_client_scope_scope" {
  description = "Map of map_roles_client_scope_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no map_roles_client_scope_scope are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.map_roles_client_scope_scope) if v.map_roles_client_scope_scope != null && length(v.map_roles_client_scope_scope) > 0 }
}
output "openid_client_permissions_map_roles_composite_scope" {
  description = "Map of map_roles_composite_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no map_roles_composite_scope are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.map_roles_composite_scope) if v.map_roles_composite_scope != null && length(v.map_roles_composite_scope) > 0 }
}
output "openid_client_permissions_map_roles_scope" {
  description = "Map of map_roles_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no map_roles_scope are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.map_roles_scope) if v.map_roles_scope != null && length(v.map_roles_scope) > 0 }
}
output "openid_client_permissions_realm_id" {
  description = "Map of realm_id values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "openid_client_permissions_token_exchange_scope" {
  description = "Map of token_exchange_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no token_exchange_scope are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.token_exchange_scope) if v.token_exchange_scope != null && length(v.token_exchange_scope) > 0 }
}
output "openid_client_permissions_view_scope" {
  description = "Map of view_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions except keys with no view_scope are omitted"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.view_scope) if v.view_scope != null && length(v.view_scope) > 0 }
}

