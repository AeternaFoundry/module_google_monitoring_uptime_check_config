variable "monitoring_uptime_check_configs" {
  description = <<EOT
Map of monitoring_uptime_check_configs, attributes below
Required:
    - display_name
    - timeout
Optional:
    - checker_type
    - deletion_policy
    - log_check_failures
    - period
    - project
    - selected_regions
    - user_labels
    - content_matchers (block):
        - content (required)
        - json_path_matcher (optional, block):
            - json_matcher (optional)
            - json_path (required)
        - matcher (optional)
    - http_check (block):
        - accepted_response_status_codes (optional, block):
            - status_class (optional)
            - status_value (optional)
        - auth_info (optional, block):
            - password (optional)
            - password_wo (optional)
            - password_wo_version (optional)
            - username (required)
        - body (optional)
        - content_type (optional)
        - custom_content_type (optional)
        - headers (optional)
        - mask_headers (optional)
        - path (optional)
        - ping_config (optional, block):
            - pings_count (required)
        - port (optional)
        - request_method (optional)
        - service_agent_authentication (optional, block):
            - type (optional)
        - use_ssl (optional)
        - validate_ssl (optional)
    - monitored_resource (block):
        - labels (required)
        - type (required)
    - resource_group (block):
        - group_id (optional)
        - resource_type (optional)
    - synthetic_monitor (block):
        - cloud_function_v2 (required, block):
            - name (required)
    - tcp_check (block):
        - ping_config (optional, block):
            - pings_count (required)
        - port (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name       = string
    timeout            = string
    checker_type       = optional(string)
    deletion_policy    = optional(string)
    log_check_failures = optional(bool)
    period             = optional(string)
    project            = optional(string)
    selected_regions   = optional(list(string))
    user_labels        = optional(map(string))
    content_matchers = optional(list(object({
      content = string
      json_path_matcher = optional(object({
        json_matcher = optional(string)
        json_path    = string
      }))
      matcher = optional(string)
    })))
    http_check = optional(object({
      accepted_response_status_codes = optional(list(object({
        status_class = optional(string)
        status_value = optional(number)
      })))
      auth_info = optional(object({
        password            = optional(string)
        password_wo         = optional(string)
        password_wo_version = optional(string)
        username            = string
      }))
      body                = optional(string)
      content_type        = optional(string)
      custom_content_type = optional(string)
      headers             = optional(map(string))
      mask_headers        = optional(bool)
      path                = optional(string)
      ping_config = optional(object({
        pings_count = number
      }))
      port           = optional(number)
      request_method = optional(string)
      service_agent_authentication = optional(object({
        type = optional(string)
      }))
      use_ssl      = optional(bool)
      validate_ssl = optional(bool)
    }))
    monitored_resource = optional(object({
      labels = map(string)
      type   = string
    }))
    resource_group = optional(object({
      group_id      = optional(string)
      resource_type = optional(string)
    }))
    synthetic_monitor = optional(object({
      cloud_function_v2 = object({
        name = string
      })
    }))
    tcp_check = optional(object({
      ping_config = optional(object({
        pings_count = number
      }))
      port = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

