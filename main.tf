resource "random_uuid" "cluster_id" {}

resource "random_string" "kubeconfig" {
    length = 12
    numeric = true
    lower = true
    upper = false
}

resource "random_uuid" "node_group_id" {}