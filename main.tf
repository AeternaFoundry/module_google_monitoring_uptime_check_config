resource "google_monitoring_uptime_check_config" "monitoring_uptime_check_configs" {
  for_each = var.monitoring_uptime_check_configs

  display_name       = each.value.display_name
  timeout            = each.value.timeout
  checker_type       = each.value.checker_type
  deletion_policy    = each.value.deletion_policy
  log_check_failures = each.value.log_check_failures
  period             = each.value.period
  project            = each.value.project
  selected_regions   = each.value.selected_regions
  user_labels        = each.value.user_labels

  dynamic "content_matchers" {
    for_each = each.value.content_matchers != null ? each.value.content_matchers : []
    content {
      content = content_matchers.value.content
      dynamic "json_path_matcher" {
        for_each = content_matchers.value.json_path_matcher != null ? [content_matchers.value.json_path_matcher] : []
        content {
          json_matcher = json_path_matcher.value.json_matcher
          json_path    = json_path_matcher.value.json_path
        }
      }
      matcher = content_matchers.value.matcher
    }
  }

  dynamic "http_check" {
    for_each = each.value.http_check != null ? [each.value.http_check] : []
    content {
      dynamic "accepted_response_status_codes" {
        for_each = http_check.value.accepted_response_status_codes != null ? http_check.value.accepted_response_status_codes : []
        content {
          status_class = accepted_response_status_codes.value.status_class
          status_value = accepted_response_status_codes.value.status_value
        }
      }
      dynamic "auth_info" {
        for_each = http_check.value.auth_info != null ? [http_check.value.auth_info] : []
        content {
          password            = auth_info.value.password
          password_wo         = auth_info.value.password_wo
          password_wo_version = auth_info.value.password_wo_version
          username            = auth_info.value.username
        }
      }
      body                = http_check.value.body
      content_type        = http_check.value.content_type
      custom_content_type = http_check.value.custom_content_type
      headers             = http_check.value.headers
      mask_headers        = http_check.value.mask_headers
      path                = http_check.value.path
      dynamic "ping_config" {
        for_each = http_check.value.ping_config != null ? [http_check.value.ping_config] : []
        content {
          pings_count = ping_config.value.pings_count
        }
      }
      port           = http_check.value.port
      request_method = http_check.value.request_method
      dynamic "service_agent_authentication" {
        for_each = http_check.value.service_agent_authentication != null ? [http_check.value.service_agent_authentication] : []
        content {
          type = service_agent_authentication.value.type
        }
      }
      use_ssl      = http_check.value.use_ssl
      validate_ssl = http_check.value.validate_ssl
    }
  }

  dynamic "monitored_resource" {
    for_each = each.value.monitored_resource != null ? [each.value.monitored_resource] : []
    content {
      labels = monitored_resource.value.labels
      type   = monitored_resource.value.type
    }
  }

  dynamic "resource_group" {
    for_each = each.value.resource_group != null ? [each.value.resource_group] : []
    content {
      group_id      = resource_group.value.group_id
      resource_type = resource_group.value.resource_type
    }
  }

  dynamic "synthetic_monitor" {
    for_each = each.value.synthetic_monitor != null ? [each.value.synthetic_monitor] : []
    content {
      cloud_function_v2 {
        name = synthetic_monitor.value.cloud_function_v2.name
      }
    }
  }

  dynamic "tcp_check" {
    for_each = each.value.tcp_check != null ? [each.value.tcp_check] : []
    content {
      dynamic "ping_config" {
        for_each = tcp_check.value.ping_config != null ? [tcp_check.value.ping_config] : []
        content {
          pings_count = ping_config.value.pings_count
        }
      }
      port = tcp_check.value.port
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

