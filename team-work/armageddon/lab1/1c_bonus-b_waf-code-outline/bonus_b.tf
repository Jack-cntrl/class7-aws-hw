resource "aws_wafv2_web_l" "star_waf01" {
  count = var.enable_waf ? 1 : 0

  name  = "var.star_waf01"
  scope = "REGIONAL"

  default_action {
    allow {}
  }

 
  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "var.star_waf01"
    sampled_requests_enabled   = true
  }

  # Explanation: AWS managed rules are like hiring Rebel commandos — they’ve seen every trick.
  rule {
    name     = "AWSManagedRulesCommonRuleSet"
    priority = 1

    override_action {
      none {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "var.star_waf01-common"
      sampled_requests_enabled   = true
    }
  }

  tags = {
    Name = "var.star_waf01"
  }
}
 