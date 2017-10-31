variable "basicPassword" {
}

resource "kubernetes_secret" "basic_auth" {
  metadata {
    name = "basic-auth"
  }

  data {
    username = "admin"
    password = "${var.basicPassword}"
  }

  type = "kubernetes.io/basic-auth"
}
