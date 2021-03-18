# applyしないと見れない。yesなどの許可クッションを踏まないで出力される。

# id情報を取得。
data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

# 現在設定されているリージョン情報を取得
data "aws_region" "current" {}

output "region_name" {
  value = data.aws_region.current.name
}

