resource tokend_asset "BTC" {
  code                        = "BTC"
  max_issuance_amount         = "21000000"
  initial_pre_issuance_amount = "21000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "Bitcoin"
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}

resource tokend_asset "EUR" {
  code                        = "EUR"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 2

  details = {
    name = "Euro"
  }

  policies = [
    "transferable",
    "base_asset",
    "stats_quote_asset",
    "withrawable"
  ]
}

resource tokend_asset "GSHD" {
  code                        = "GSHD"
  max_issuance_amount         = "9223372036854"
  initial_pre_issuance_amount = "9223372036731"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "GSHD"
  }

  policies = [
    "transferable",
    "base_asset"
  ]
}

resource tokend_asset "GSHI" {
  code                        = "GSHI"
  max_issuance_amount         = "9223372036854"
  initial_pre_issuance_amount = "9223372035054"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "Points"
  }

  policies = [
    "transferable",
    "base_asset"
  ]
}

resource tokend_asset "GSHP" {
  code                        = "GSHP"
  max_issuance_amount         = "9223372036854"
  initial_pre_issuance_amount = "9223372036731"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 2

  details = {
    name = "Euro"
  }

  policies = [
    "transferable",
    "base_asset"
  ]
}
