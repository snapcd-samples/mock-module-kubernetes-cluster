resource "time_sleep" "wait_10s" {
  create_duration  = "10s"
  destroy_duration = "10s"
}

resource "random_uuid" "cluster_id" {
  depends_on = [time_sleep.wait_10s]
}

resource "random_string" "kubeconfig" {
  length     = 12
  numeric    = true
  lower      = true
  upper      = false
  depends_on = [time_sleep.wait_10s]
}

resource "random_uuid" "node_group_id" {
  depends_on = [time_sleep.wait_10s]
}