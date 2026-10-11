resource "keycloak_openid_client_permissions" "openid_client_permissions" {
  for_each = var.openid_client_permissions

  client_id = each.value.client_id
  realm_id  = each.value.realm_id

  dynamic "configure_scope" {
    for_each = each.value.configure_scope != null ? [each.value.configure_scope] : []
    content {
      decision_strategy = configure_scope.value.decision_strategy
      description       = configure_scope.value.description
      policies          = configure_scope.value.policies
    }
  }

  dynamic "manage_scope" {
    for_each = each.value.manage_scope != null ? [each.value.manage_scope] : []
    content {
      decision_strategy = manage_scope.value.decision_strategy
      description       = manage_scope.value.description
      policies          = manage_scope.value.policies
    }
  }

  dynamic "map_roles_client_scope_scope" {
    for_each = each.value.map_roles_client_scope_scope != null ? [each.value.map_roles_client_scope_scope] : []
    content {
      decision_strategy = map_roles_client_scope_scope.value.decision_strategy
      description       = map_roles_client_scope_scope.value.description
      policies          = map_roles_client_scope_scope.value.policies
    }
  }

  dynamic "map_roles_composite_scope" {
    for_each = each.value.map_roles_composite_scope != null ? [each.value.map_roles_composite_scope] : []
    content {
      decision_strategy = map_roles_composite_scope.value.decision_strategy
      description       = map_roles_composite_scope.value.description
      policies          = map_roles_composite_scope.value.policies
    }
  }

  dynamic "map_roles_scope" {
    for_each = each.value.map_roles_scope != null ? [each.value.map_roles_scope] : []
    content {
      decision_strategy = map_roles_scope.value.decision_strategy
      description       = map_roles_scope.value.description
      policies          = map_roles_scope.value.policies
    }
  }

  dynamic "token_exchange_scope" {
    for_each = each.value.token_exchange_scope != null ? [each.value.token_exchange_scope] : []
    content {
      decision_strategy = token_exchange_scope.value.decision_strategy
      description       = token_exchange_scope.value.description
      policies          = token_exchange_scope.value.policies
    }
  }

  dynamic "view_scope" {
    for_each = each.value.view_scope != null ? [each.value.view_scope] : []
    content {
      decision_strategy = view_scope.value.decision_strategy
      description       = view_scope.value.description
      policies          = view_scope.value.policies
    }
  }
}

