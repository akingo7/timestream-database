resource "aws_timestreamwrite_database" "deploy" {
  database_name = "dev-database"
  tags = var.tags
}

resource "aws_timestreamwrite_table" "deploy" {
  database_name = aws_timestreamwrite_database.example.database_name
  table_name    = "dev-database"

  retention_properties {
    magnetic_store_retention_period_in_days = 73000
    memory_store_retention_period_in_hours  = 8
  }

  tags = var.tags
}