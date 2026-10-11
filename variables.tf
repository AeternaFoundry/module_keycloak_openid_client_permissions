variable "openid_client_permissions" {
  description = <<EOT
Map of openid_client_permissions, attributes below
Required:
    - client_id
    - realm_id
Optional:
    - configure_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - manage_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - map_roles_client_scope_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - map_roles_composite_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - map_roles_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - token_exchange_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
    - view_scope (block):
        - decision_strategy (optional)
        - description (optional)
        - policies (optional)
EOT

  type = map(object({
    client_id = string
    realm_id  = string
    configure_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    manage_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    map_roles_client_scope_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    map_roles_composite_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    map_roles_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    token_exchange_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
    view_scope = optional(object({
      decision_strategy = optional(string)
      description       = optional(string)
      policies          = optional(set(string))
    }))
  }))
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

