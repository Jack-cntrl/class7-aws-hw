output "star_waf_arn" {
  value = var.enable_waf ? aws_wafv2_web_acl.star_waf01[0].arn : null
}