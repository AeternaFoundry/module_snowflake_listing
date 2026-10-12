variable "listings" {
  description = <<EOT
Map of listings, attributes below
Required:
    - name
    - manifest (block):
        - from_stage (optional, block):
            - location (optional)
            - stage (required)
            - version_comment (optional)
            - version_name (optional)
        - from_string (optional)
Optional:
    - application_package
    - comment
    - publish
    - share
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                = string
    application_package = optional(string)
    comment             = optional(string)
    publish             = optional(string)
    share               = optional(string)
    manifest = object({
      from_stage = optional(object({
        location        = optional(string)
        stage           = string
        version_comment = optional(string)
        version_name    = optional(string)
      }))
      from_string = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

