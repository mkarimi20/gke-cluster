data "google_container_engine_versions" "cluster_version" {
  location       = "${var.region}"
  version_prefix = "${var.cluster_version}"
  project        = "${var.google_project_id}"
}
output "version" {
  value = "${data.google_container_engine_versions.cluster_version.latest_node_version}"
}

resource "google_container_cluster" "cluster_fuchicorp_com" {
  name               = "${var.cluster_name}"
  network            = "default"
  subnetwork         = "default"
  location           = "${var.region}"
  min_master_version = "${data.google_container_engine_versions.cluster_version.latest_node_version}"
  initial_node_count = "${var.node_count}"
  project            = "${var.google_project_id}"

  node_config {
    machine_type = "n1-standard-2"
  }
}