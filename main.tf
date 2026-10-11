data "oci_database_migration_jobs" "database_migration_jobs_lookup" {
  for_each = var.database_migration_jobs_lookup

  migration_id        = each.value.migration_id
  display_name        = each.value.display_name
  job_id_not_equal_to = each.value.job_id_not_equal_to
  state               = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

