resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "backend_bucket" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = var.region_name
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}