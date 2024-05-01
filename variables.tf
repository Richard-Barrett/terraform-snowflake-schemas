variable "database" {
  type        = string
  description = "Name of the database for granting schema access"
}

variable "data_retention_days" {
  type        = number
  default     = 30
  description = "value for data retention days"
}

variable "is_transient" {
  type        = bool
  default     = false
  description = "value for is_transient"
}

variable "comment" {
  type        = string
  description = "value for comment"
  default     = ""
}

variable "is_managed" {
  type        = bool
  default     = false
  description = "value for is_managed"
}

variable "schema_name" {
  type        = string
  description = "Name of the schema"
}

variable "privilege" {
  type        = string
  description = "Privilege for the schema grant"
  default     = "USAGE"
}

variable "roles" {
  type        = list(string)
  description = "List of roles to grant access to schema_name"
  default     = [""]
}

variable "shares" {
  type        = list(string)
  description = "Grant privilege to shares (only valid if on_future and on_all are unset 'DEFAULT')"
  default     = [""]
}

variable "on_all" {
  type        = bool
  description = "When this is set to true, apply this grant on all schemas in the given database. The schema_name and shares fields must be unset in order to use on_all. Cannot be used together with on_future."
  default     = false
}

variable "on_future" {
  type        = bool
  description = "(Boolean) When this is set to true, apply this grant on all future schemas in the given database. The schema_name and shares fields must be unset in order to use on_future. Cannot be used together with on_all."
  default     = false
}

variable "enable_multiple_grants" {
  type        = bool
  description = "When this is set to true, multiple grants of the same type can be created. This will cause Terraform to not revoke grants applied to roles and objects outside Terraform."
  default     = true
}

variable "with_grant_option" {
  type        = bool
  description = "(Boolean) When this is set to true, allows the recipient role to grant the privileges to other roles."
  default     = false
}