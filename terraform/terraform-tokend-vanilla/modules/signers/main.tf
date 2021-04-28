variable "license_signer_role" {
  type = "string"
}

resource tokend_account_signer "license_signer" {
  public_key = "GAEOJ3TZ2HI2FNFLMS7KLYZXRX5YZKC5UBMXUH2B5O2KSJ7ALZQALHH3"
  weight = 1000
  identity = 0
  role_id = "${var.license_signer_role}"
}