output "listings_id" {
  description = "Map of id values across all listings, keyed the same as var.listings except keys with no id are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "listings_application_package" {
  description = "Map of application_package values across all listings, keyed the same as var.listings except keys with no application_package are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.application_package if v.application_package != null && length(v.application_package) > 0 }
}
output "listings_comment" {
  description = "Map of comment values across all listings, keyed the same as var.listings except keys with no comment are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "listings_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all listings, keyed the same as var.listings except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "listings_manifest" {
  description = "Map of manifest values across all listings, keyed the same as var.listings except keys with no manifest are omitted"
  value       = { for k, v in snowflake_listing.listings : k => one(v.manifest) if v.manifest != null && length(v.manifest) > 0 }
}
output "listings_name" {
  description = "Map of name values across all listings, keyed the same as var.listings except keys with no name are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "listings_publish" {
  description = "Map of publish values across all listings, keyed the same as var.listings except keys with no publish are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.publish if v.publish != null && length(v.publish) > 0 }
}
output "listings_share" {
  description = "Map of share values across all listings, keyed the same as var.listings except keys with no share are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.share if v.share != null && length(v.share) > 0 }
}
output "listings_show_output" {
  description = "Map of show_output values across all listings, keyed the same as var.listings except keys with no show_output are omitted"
  value       = { for k, v in snowflake_listing.listings : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

