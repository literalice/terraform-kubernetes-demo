resource "kubernetes_config_map" "infra" {
  metadata {
    name = "infra-env"
  }

  data {
    db_host = "dbhost2:5432"
    cache_host = "cache:6379"
  }
}

