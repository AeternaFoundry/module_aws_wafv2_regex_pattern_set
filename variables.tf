variable "wafv2_regex_pattern_sets" {
  description = <<EOT
Map of wafv2_regex_pattern_sets, attributes below
Required:
    - scope
Optional:
    - description
    - name
    - name_prefix
    - region
    - tags
    - tags_all
    - regular_expression (block):
        - regex_string (required)
EOT

  type = map(object({
    scope       = string
    description = optional(string)
    name        = optional(string)
    name_prefix = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    regular_expression = optional(list(object({
      regex_string = string
    })))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

