# Helm Release Module


## Table Of Contents

- [Helm Release Module](#helm-release-module)
  * [Usage example](#usage-example)

## Usage example

Here's the gist of using it via github.

```terraform
module "helm_deploy" {
  source          = "git@github.com:clouddrove/terrafrom-helm-module.git"
  name            = "redis"
  repository      = "https://charts.bitnami.com/bitnami"
  chart           = "redis"
  chart_version   = "11.3.4"
  namespace       = "redis"
  config_path     = "./kubeconfig/kube_cluster.yaml"

  values         = [
    <<-EOF
    podDisruptionBudget:
      enabled: false
      minAvailable: 1

    cluster:
      enabled: true
      slaveCount: 1

    EOF
  ]


}
```

