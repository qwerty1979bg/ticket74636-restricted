/*
resource "null_resource" "test" {
  
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = ""
    #command = "docker build -t ${var.image_name}:${var.image_tag} ./path-to-docker-file-Folder"
    }
}
*/
  
data "tfe_outputs" "one" {
  organization = "ticket74636"
  workspace    = "ticket74636-one"
}

output "one" {
  #    value = nonsensitive(data.tfe_outputs.network.values)
  value = nonsensitive(data.tfe_outputs.one.values)
}

#test1
