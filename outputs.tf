output "libraries_id" {
  description = "Map of id values across all libraries, keyed the same as var.libraries except keys with no id are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "libraries_cluster_id" {
  description = "Map of cluster_id values across all libraries, keyed the same as var.libraries except keys with no cluster_id are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "libraries_cran" {
  description = "Map of cran values across all libraries, keyed the same as var.libraries except keys with no cran are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.cran if v.cran != null && length(v.cran) > 0 }
}
output "libraries_egg" {
  description = "Map of egg values across all libraries, keyed the same as var.libraries except keys with no egg are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.egg if v.egg != null && length(v.egg) > 0 }
}
output "libraries_jar" {
  description = "Map of jar values across all libraries, keyed the same as var.libraries except keys with no jar are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.jar if v.jar != null && length(v.jar) > 0 }
}
output "libraries_maven" {
  description = "Map of maven values across all libraries, keyed the same as var.libraries except keys with no maven are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.maven if v.maven != null && length(v.maven) > 0 }
}
output "libraries_provider_config" {
  description = "Map of provider_config values across all libraries, keyed the same as var.libraries except keys with no provider_config are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "libraries_pypi" {
  description = "Map of pypi values across all libraries, keyed the same as var.libraries except keys with no pypi are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.pypi if v.pypi != null && length(v.pypi) > 0 }
}
output "libraries_requirements" {
  description = "Map of requirements values across all libraries, keyed the same as var.libraries except keys with no requirements are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.requirements if v.requirements != null && length(v.requirements) > 0 }
}
output "libraries_whl" {
  description = "Map of whl values across all libraries, keyed the same as var.libraries except keys with no whl are omitted"
  value       = { for k, v in databricks_library.libraries : k => v.whl if v.whl != null && length(v.whl) > 0 }
}

