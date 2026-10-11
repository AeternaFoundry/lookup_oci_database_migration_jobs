output "database_migration_jobs_lookup_id" {
  description = "Map of id values across all database_migration_jobs_lookup, keyed the same as var.database_migration_jobs_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_migration_jobs.database_migration_jobs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_migration_jobs_lookup_display_name" {
  description = "Map of display_name values across all database_migration_jobs_lookup, keyed the same as var.database_migration_jobs_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_database_migration_jobs.database_migration_jobs_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_migration_jobs_lookup_filter" {
  description = "Map of filter values across all database_migration_jobs_lookup, keyed the same as var.database_migration_jobs_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_migration_jobs.database_migration_jobs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_migration_jobs_lookup_job_collection" {
  description = "Map of job_collection values across all database_migration_jobs_lookup, keyed the same as var.database_migration_jobs_lookup except keys with no job_collection are omitted"
  value       = { for k, v in data.oci_database_migration_jobs.database_migration_jobs_lookup : k => v.job_collection if v.job_collection != null && length(v.job_collection) > 0 }
}
output "database_migration_jobs_lookup_job_id_not_equal_to" {
  description = "Map of job_id_not_equal_to values across all database_migration_jobs_lookup, keyed the same as var.database_migration_jobs_lookup except keys with no job_id_not_equal_to are omitted"
  value       = { for k, v in data.oci_database_migration_jobs.database_migration_jobs_lookup : k => v.job_id_not_equal_to if v.job_id_not_equal_to != null && length(v.job_id_not_equal_to) > 0 }
}
output "database_migration_jobs_lookup_migration_id" {
  description = "Map of migration_id values across all database_migration_jobs_lookup, keyed the same as var.database_migration_jobs_lookup except keys with no migration_id are omitted"
  value       = { for k, v in data.oci_database_migration_jobs.database_migration_jobs_lookup : k => v.migration_id if v.migration_id != null && length(v.migration_id) > 0 }
}
output "database_migration_jobs_lookup_state" {
  description = "Map of state values across all database_migration_jobs_lookup, keyed the same as var.database_migration_jobs_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_database_migration_jobs.database_migration_jobs_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

