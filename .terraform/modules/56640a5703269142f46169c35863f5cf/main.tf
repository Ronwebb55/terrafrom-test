resource "kubernetes_deployment" "testapp" {
  provider = "kubernetes"
  metadata {
    name = "${var.appName}"
    labels {
      test = "${var.appLabel}"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels {
        test = "${var.appLabel}"
      }
    }

    template {
      metadata {
        labels {
          test = "${var.appLabel}"
        }
      }

      spec {
        container {
          image = "${var.imageName}"
          name  = "${var.appName}"
          port {
            container_port = 8081
          }
          resources{
            limits{
              cpu    = "${var.cpuLimit}"
              memory = "${var.memoryLimit}"
            }
            requests{
              cpu    = "${var.cpuRequest}"
              memory = "${var.memoryRequest}"
            }
          }
          
          liveness_probe {
            http_get {
              path = "${var.livenessprobePath}"
              port = "${var.appPort}"
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
        
        
        image_pull_secrets {
          name = "acr-auth"
        }
        
        
      }
    }
  }
}
resource "kubernetes_service" "nodeapp" {
  metadata {
    name = "${var.appName}"
    labels {
      test = "${var.appName}"
    }

  }
  spec {
    selector {
      test = "testapp"
    }
    port {
      port = 8081
      target_port = 8081
      protocol = "TCP"
      node_port = 30091
    }

    type = "NodePort"
  }
}