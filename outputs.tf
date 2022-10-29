output "management_vm_ip" {
  value = google_compute_instance.management_vm.network_interface.0.network_ip 
}

output "credential" {
  value = google_service_account_key.mykey.private_key
  sensitive = true
}
