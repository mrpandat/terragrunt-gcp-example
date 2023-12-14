terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.36.0 and above) recommends Terraform 1.1.4 or above.
  required_version = ">= v1.5.7"

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.9.0"
    }
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE MYSQL DB
# ---------------------------------------------------------------------------------------------------------------------

resource "google_sql_database" "database" {
  name     = "my-database"
  instance = google_sql_database_instance.instance.name
}

# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
  name             = var.name
  region           = var.gcp_region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.instance_class
  }

  deletion_protection  = "true"
}