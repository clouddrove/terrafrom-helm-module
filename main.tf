resource "helm_release" "main" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
  version    = var.chart_version
  namespace  = var.namespace
  verify     = false
  values     = var.values

}
