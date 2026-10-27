output "application_known_clients_id" {
  description = "Map of id values across all application_known_clients, keyed the same as var.application_known_clients"
  value       = { for k, v in azuread_application_known_clients.application_known_clients : k => v.id }
}
output "application_known_clients_application_id" {
  description = "Map of application_id values across all application_known_clients, keyed the same as var.application_known_clients"
  value       = { for k, v in azuread_application_known_clients.application_known_clients : k => v.application_id }
}
output "application_known_clients_known_client_ids" {
  description = "Map of known_client_ids values across all application_known_clients, keyed the same as var.application_known_clients"
  value       = { for k, v in azuread_application_known_clients.application_known_clients : k => v.known_client_ids }
}

