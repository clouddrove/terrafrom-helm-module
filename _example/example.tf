module "helm_deploy" {
  source          = "../"
  name            = "metrics-server"
  repository      = "https://charts.bitnami.com/bitnami"
  chart           = "metrics-server"
  chart_version   = "5.0.1"
  namespace       = "kube-system"
  config_path     = "./kubeconfig/kube_cluster.yaml"

  values         = [
    <<-EOF
    fullnameOverride: metrics-server
    EOF
  ]

}