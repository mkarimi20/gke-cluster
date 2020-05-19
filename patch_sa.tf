resource "null_resource" "login" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "kubectl create namespace dev"
  }

  
  provisioner "local-exec" {
    command = "kubectl patch serviceaccount default -p '({"imagePullSecrets": [{"name" = "nexus-creds"}]})' -n prod"
  }

  #provisioner “local-exec” {
   # command = “kubectl patch serviceaccount default -p ‘{“imagePullSecrets”: [{“name”:  “nexus-creds”}]}’ -n qa”
  #}
}