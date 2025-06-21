output "alarm_arn" {
  value       = aws_cloudwatch_metric_alarm.high_cpu.arn
  description = "ARN of the CloudWatch alarm"
}
