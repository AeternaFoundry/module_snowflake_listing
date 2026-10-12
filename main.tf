resource "snowflake_listing" "listings" {
  for_each = var.listings

  name                = each.value.name
  application_package = each.value.application_package
  comment             = each.value.comment
  publish             = each.value.publish
  share               = each.value.share

  manifest {
    dynamic "from_stage" {
      for_each = each.value.manifest.from_stage != null ? [each.value.manifest.from_stage] : []
      content {
        location        = from_stage.value.location
        stage           = from_stage.value.stage
        version_comment = from_stage.value.version_comment
        version_name    = from_stage.value.version_name
      }
    }
    from_string = each.value.manifest.from_string
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

