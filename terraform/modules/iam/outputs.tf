output "iam_instance_profile_name" {
  description = "作成された IAM インスタンスプロファイルの名前（EC2 で利用）"
  value       = aws_iam_instance_profile.this.name
}

output "iam_role_name" {
  description = "作成された IAM ロールの名前"
  value       = aws_iam_role.this.name
}
