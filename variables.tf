variable "ec2_instance_types_lookup" {
  description = <<EOT
Map of ec2_instance_types_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

