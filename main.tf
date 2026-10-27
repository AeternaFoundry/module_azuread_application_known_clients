resource "azuread_application_known_clients" "application_known_clients" {
  for_each = var.application_known_clients

  application_id   = each.value.application_id
  known_client_ids = each.value.known_client_ids

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

