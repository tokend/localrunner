variable "asset_type_default" {
  type = "string"
}

variable "asset_type_kyc" {
  type = "string"
}

variable "asset_type_security" {
  type ="string"
}

variable restricted_poll_type {
  type = "string"
}


resource tokend_account_rule "signer_manager" {
  action = "*"
  entry_type = "signer"
}

resource tokend_account_rule "role_updater" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "change_role"
  }
}

resource tokend_account_rule "balance_creator" {
  action = "create"
  entry_type = "balance"
}

resource tokend_account_rule "tx_sender" {
  action     = "send"
  entry_type = "transaction"
}

resource tokend_account_rule "asset_creator" {
  action = "create"
  entry_type = "asset"
  entry = {
    asset_type = "*"
    asset_code = "*"
  }
}

resource tokend_account_rule "asset_remover" {
  action = "remove"
  entry_type = "asset"
  entry = {
    asset_type = "*"
    asset_code = "*"
  }
}

resource tokend_account_rule "asset_withdrawer" {
  action = "withdraw"
  entry_type = "asset"
  entry = {
    asset_type = "*"
    asset_code = "*"
  }
}


resource tokend_account_rule "reviewable_request_creator" { // TODO shrink scope to specific requests
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "*"
  }
}



resource tokend_account_rule "sale_participant" {
  action     = "participate"
  entry_type = "sale"

  entry = {
    sale_type = "*"
    sale_id = "*"
  }
}

resource tokend_account_rule "external_binder" {
  action = "bind"
  entry_type = "external_system_account_id_pool_entry"
}

resource tokend_account_rule "vote_creator" {
  action = "create"
  entry_type = "vote"

  entry = {
    poll_id = "*"
    permission_type = "*"
  }
}

resource tokend_account_rule "vote_remover" {
  action = "remove"
  entry_type = "vote"

  entry = {
    poll_id = "*"
    permission_type = "*"
  }
}

resource tokend_account_rule "forbid_restricted_vote_remove" {
  action = "remove"
  entry_type = "vote"
  forbids = true

  entry = {
    poll_id = "*"
    permission_type = "${var.restricted_poll_type}"
  }
}

resource tokend_account_rule "poll_closer" {
  action = "close"
  entry_type = "poll"

  entry = {
    poll_id = "*"
    permission_type = "*"
  }
}

resource tokend_account_rule "poll_end_time_updater" {
  action = "update_end_time"
  entry_type = "poll"

  entry = {
    poll_id = "*"
    permission_type = "*"
  }
}

resource tokend_account_rule "poll_canceler" {
  action = "cancel"
  entry_type = "poll"

  entry = {
    poll_id = "*"
    permission_type = "*"
  }
}

resource tokend_account_rule "kyc_recovery_creator" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "kyc_recovery"
  }
}

resource tokend_account_rule "atomic_swap_ask_creator" {
  action = "create"
  entry_type = "atomic_swap_ask"

  entry = {
    asset_type = "*"
    asset_code = "*"
  }
}

resource tokend_account_rule "data_creator" {
  action = "create"
  entry_type = "data"

  entry = {
    type = "*"
  }
}

resource tokend_account_rule "data_updater" {
  action = "update"
  entry_type = "data"

  entry = {
    type = "*"
  }
}

resource tokend_account_rule "data_updater_for_other" {
  action = "update_for_other"
  entry_type = "data"

  entry = {
    type = "*"
  }
}

output "external_binder" {
  value = "${tokend_account_rule.external_binder.id}"
}

output "sale_participant" {
  value = "${tokend_account_rule.sale_participant.id}"
}

output "reviewable_request_creator" {
  value = "${tokend_account_rule.reviewable_request_creator.id}"
}

output "signer_manager" {
  value = "${tokend_account_rule.signer_manager.id}"
}

output "role_updater" {
  value = "${tokend_account_rule.role_updater.id}"
}

output "tx_sender" {
  value = "${tokend_account_rule.tx_sender.id}"
}

output "balance_creator" {
  value = "${tokend_account_rule.balance_creator.id}"
}

output "asset_creator" {
  value = "${tokend_account_rule.asset_creator.id}"
}

output "asset_remover" {
  value = "${tokend_account_rule.asset_remover.id}"
}

output "asset_withdrawer" {
  value = "${tokend_account_rule.asset_withdrawer.id}"
}

output "vote_creator" {
  value = "${tokend_account_rule.vote_creator.id}"
}

output "vote_remover" {
  value = "${tokend_account_rule.vote_remover.id}"
}

output "forbid_restricted_vote_remove" {
  value = "${tokend_account_rule.forbid_restricted_vote_remove.id}"
}

output "poll_closer" {
  value = "${tokend_account_rule.poll_closer.id}"
}

output "poll_end_time_updater" {
  value = "${tokend_account_rule.poll_end_time_updater.id}"
}

output "poll_canceler" {
  value = "${tokend_account_rule.poll_canceler.id}"
}

output "kyc_recovery_creator" {
  value = "${tokend_account_rule.kyc_recovery_creator.id}"
}

output "atomic_swap_ask_creator" {
  value = "${tokend_account_rule.atomic_swap_ask_creator.id}"
}

output "data_creator" {
  value = "${tokend_account_rule.data_creator.id}"
}

output "data_updater" {
  value = "${tokend_account_rule.data_updater.id}"
}

output "data_updater_for_other" {
  value = "${tokend_account_rule.data_updater_for_other.id}"
}
