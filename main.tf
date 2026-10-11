resource "databricks_library" "libraries" {
  for_each = var.libraries

  cluster_id   = each.value.cluster_id
  egg          = each.value.egg
  jar          = each.value.jar
  requirements = each.value.requirements
  whl          = each.value.whl

  dynamic "cran" {
    for_each = each.value.cran != null ? each.value.cran : []
    content {
      package = cran.value.package
      repo    = cran.value.repo
    }
  }

  dynamic "maven" {
    for_each = each.value.maven != null ? each.value.maven : []
    content {
      coordinates = maven.value.coordinates
      exclusions  = maven.value.exclusions
      repo        = maven.value.repo
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? each.value.provider_config : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "pypi" {
    for_each = each.value.pypi != null ? each.value.pypi : []
    content {
      package = pypi.value.package
      repo    = pypi.value.repo
    }
  }
}

