output "openid_client_permissions_id" {
  description = "Map of id values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.id }
}
output "openid_client_permissions_authorization_resource_server_id" {
  description = "Map of authorization_resource_server_id values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.authorization_resource_server_id }
}
output "openid_client_permissions_client_id" {
  description = "Map of client_id values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.client_id }
}
output "openid_client_permissions_configure_scope" {
  description = "Map of configure_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.configure_scope) }
}
output "openid_client_permissions_enabled" {
  description = "Map of enabled values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.enabled }
}
output "openid_client_permissions_manage_scope" {
  description = "Map of manage_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.manage_scope) }
}
output "openid_client_permissions_map_roles_client_scope_scope" {
  description = "Map of map_roles_client_scope_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.map_roles_client_scope_scope) }
}
output "openid_client_permissions_map_roles_composite_scope" {
  description = "Map of map_roles_composite_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.map_roles_composite_scope) }
}
output "openid_client_permissions_map_roles_scope" {
  description = "Map of map_roles_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.map_roles_scope) }
}
output "openid_client_permissions_realm_id" {
  description = "Map of realm_id values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => v.realm_id }
}
output "openid_client_permissions_token_exchange_scope" {
  description = "Map of token_exchange_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.token_exchange_scope) }
}
output "openid_client_permissions_view_scope" {
  description = "Map of view_scope values across all openid_client_permissions, keyed the same as var.openid_client_permissions"
  value       = { for k, v in keycloak_openid_client_permissions.openid_client_permissions : k => one(v.view_scope) }
}

