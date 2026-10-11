data "aws_ec2_instance_types" "ec2_instance_types_lookup" {
  for_each = var.ec2_instance_types_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

