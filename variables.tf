variable "libraries" {
  description = <<EOT
Map of libraries, attributes below
Required:
    - cluster_id
Optional:
    - egg
    - jar
    - requirements
    - whl
    - cran (block):
        - package (required)
        - repo (optional)
    - maven (block):
        - coordinates (required)
        - exclusions (optional)
        - repo (optional)
    - provider_config (block):
        - workspace_id (required)
    - pypi (block):
        - package (required)
        - repo (optional)
EOT

  type = map(object({
    cluster_id   = string
    egg          = optional(string)
    jar          = optional(string)
    requirements = optional(string)
    whl          = optional(string)
    cran = optional(list(object({
      package = string
      repo    = optional(string)
    })))
    maven = optional(list(object({
      coordinates = string
      exclusions  = optional(list(string))
      repo        = optional(string)
    })))
    provider_config = optional(list(object({
      workspace_id = string
    })))
    pypi = optional(list(object({
      package = string
      repo    = optional(string)
    })))
  }))
}

