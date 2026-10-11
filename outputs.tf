output "monitoring_uptime_check_configs_id" {
  description = "Map of id values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no id are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_uptime_check_configs_checker_type" {
  description = "Map of checker_type values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no checker_type are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.checker_type if v.checker_type != null && length(v.checker_type) > 0 }
}
output "monitoring_uptime_check_configs_content_matchers" {
  description = "Map of content_matchers values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no content_matchers are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.content_matchers if v.content_matchers != null && length(v.content_matchers) > 0 }
}
output "monitoring_uptime_check_configs_deletion_policy" {
  description = "Map of deletion_policy values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "monitoring_uptime_check_configs_display_name" {
  description = "Map of display_name values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no display_name are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "monitoring_uptime_check_configs_http_check" {
  description = "Map of http_check values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no http_check are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => one(v.http_check) if v.http_check != null && length(v.http_check) > 0 }
  sensitive   = true
}
output "monitoring_uptime_check_configs_log_check_failures" {
  description = "Map of log_check_failures values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no log_check_failures are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.log_check_failures if v.log_check_failures != null }
}
output "monitoring_uptime_check_configs_monitored_resource" {
  description = "Map of monitored_resource values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no monitored_resource are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => one(v.monitored_resource) if v.monitored_resource != null && length(v.monitored_resource) > 0 }
}
output "monitoring_uptime_check_configs_name" {
  description = "Map of name values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no name are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitoring_uptime_check_configs_period" {
  description = "Map of period values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no period are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.period if v.period != null && length(v.period) > 0 }
}
output "monitoring_uptime_check_configs_project" {
  description = "Map of project values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no project are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "monitoring_uptime_check_configs_resource_group" {
  description = "Map of resource_group values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no resource_group are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => one(v.resource_group) if v.resource_group != null && length(v.resource_group) > 0 }
}
output "monitoring_uptime_check_configs_selected_regions" {
  description = "Map of selected_regions values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no selected_regions are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.selected_regions if v.selected_regions != null && length(v.selected_regions) > 0 }
}
output "monitoring_uptime_check_configs_synthetic_monitor" {
  description = "Map of synthetic_monitor values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no synthetic_monitor are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => one(v.synthetic_monitor) if v.synthetic_monitor != null && length(v.synthetic_monitor) > 0 }
}
output "monitoring_uptime_check_configs_tcp_check" {
  description = "Map of tcp_check values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no tcp_check are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => one(v.tcp_check) if v.tcp_check != null && length(v.tcp_check) > 0 }
}
output "monitoring_uptime_check_configs_timeout" {
  description = "Map of timeout values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no timeout are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.timeout if v.timeout != null && length(v.timeout) > 0 }
}
output "monitoring_uptime_check_configs_uptime_check_id" {
  description = "Map of uptime_check_id values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no uptime_check_id are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.uptime_check_id if v.uptime_check_id != null && length(v.uptime_check_id) > 0 }
}
output "monitoring_uptime_check_configs_user_labels" {
  description = "Map of user_labels values across all monitoring_uptime_check_configs, keyed the same as var.monitoring_uptime_check_configs except keys with no user_labels are omitted"
  value       = { for k, v in google_monitoring_uptime_check_config.monitoring_uptime_check_configs : k => v.user_labels if v.user_labels != null && length(v.user_labels) > 0 }
}

