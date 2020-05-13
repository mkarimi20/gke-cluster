cluster_name = "fuchicorp-cluster"
node_count = "3"
google_project_id = "tokyo-analyst-272506"
service_account_path = "./fuchicorp-service-account.json"
region = "us-central1"
google_bucket_name  = "olga-28-bucket"
cluster_version = "1.13.11-gke.9"
google_container_node_pool.name = "my-node-pool"
google_container_node_pool.location = "us-central1"
#deployment_environment = "test"

environment = "dev"
s3_bucket = "mkarimi-2020_test"                  #Will be used to set backend.tf
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-central1"
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate"