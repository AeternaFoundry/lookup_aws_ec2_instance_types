output "ec2_instance_types_lookup_id" {
  description = "Map of id values across all ec2_instance_types_lookup, keyed the same as var.ec2_instance_types_lookup"
  value       = { for k, v in data.aws_ec2_instance_types.ec2_instance_types_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_instance_types_lookup_filter" {
  description = "Map of filter values across all ec2_instance_types_lookup, keyed the same as var.ec2_instance_types_lookup"
  value       = { for k, v in data.aws_ec2_instance_types.ec2_instance_types_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_instance_types_lookup_instance_types" {
  description = "Map of instance_types values across all ec2_instance_types_lookup, keyed the same as var.ec2_instance_types_lookup"
  value       = { for k, v in data.aws_ec2_instance_types.ec2_instance_types_lookup : k => v.instance_types if v.instance_types != null && length(v.instance_types) > 0 }
}
output "ec2_instance_types_lookup_region" {
  description = "Map of region values across all ec2_instance_types_lookup, keyed the same as var.ec2_instance_types_lookup"
  value       = { for k, v in data.aws_ec2_instance_types.ec2_instance_types_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

