variable "database_migration_jobs_lookup" {
  description = <<EOT
Map of database_migration_jobs_lookup, attributes below
Required:
    - migration_id
Optional:
    - display_name
    - job_id_not_equal_to
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    migration_id        = string
    display_name        = optional(string)
    job_id_not_equal_to = optional(string)
    state               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

