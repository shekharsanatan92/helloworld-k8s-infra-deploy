provider "aws" {
  region              = var.region
  allowed_account_ids = tolist([var.account_id])
}
