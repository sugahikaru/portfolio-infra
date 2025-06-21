variable "role_name" {
  type        = string
  description = "IAMロールの名前"
}

variable "policy_name" {
  type        = string
  description = "IAMポリシーの名前"
}

variable "bucket_name" {
  type        = string
  description = "アクセス許可を与えるS3バケット名"
}
