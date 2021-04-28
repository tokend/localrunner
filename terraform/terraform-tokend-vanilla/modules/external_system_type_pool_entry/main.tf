resource tokend_key_value "external_system_type_stellar" {
  key        = "external_system_type:stellar"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "external_system_type_ethereum" {
  key        = "external_system_type:ethereum"
  value_type = "uint32"
  value      = "2"
}

resource "tokend_external_system_pool_entry" "test_stellar" {
  depends_on = ["tokend_key_value.external_system_type_stellar"]
  target_count = 1
  external_system_type = "${tokend_key_value.external_system_type_stellar.value}"
  data = {
    address = "tpubD6NzVbkrYhZ4Xcr6EpCgsKYmwy8yScpU2uDPJJ61DXjWQ7YBj9WWBGetVJu3cwXWsyAxmc5AP3EMfuYALUWf6Hjwrz4eRrTxqa8g8YN8kiT"
  }
}
