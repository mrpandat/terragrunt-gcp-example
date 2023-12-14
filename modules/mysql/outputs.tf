output "instance_name" {
  value = google_sql_database_instance.instance.name
}

output "db_name" {
  value = google_sql_database.database.name
}