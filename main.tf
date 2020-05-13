module "gke-culster" {
  source = "./module"
  cluster_name = "${var.cluster_name}"
  node_count = "${var.node_count}"
  google_project_id = "${var.google_project_id}"
  service_account_path = "${var.service_account_path}"
  region = "${var.region}"
  google_bucket_name  = "${var.google_bucket_name}"
  cluster_version = "${var.cluster_version}"
  
}
