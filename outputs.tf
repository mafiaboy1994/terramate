# outputs.tf
output "const_yaml" {
  value = local.const_yaml
}

output "const_yml" {
  value = local.const_yml
}

output "config_file_name" {
  value = local.config_file_name
}

output "config_file_split" {
  value = local.config_file_split
}

output "config_file_extension" {
  value = local.config_file_extension
}

output "config_template_file_variables" {
  value = local.config_template_file_variables
}

output "config" {
  value = local.config
}

output "spoke_networking" {
  value = local.spoke_networking
}