/**
 * Mirror content from external Git repository.
 */
resource "null_resource" "source_clone" {
  count = var.mirror_frequency != "never" ? 1 : 0
  triggers = {
    import = local.import_triggers[var.mirror_frequency]
  }
  provisioner "local-exec" {
    command = "git clone --mirror ${var.source_repository} || true"
  }
}

resource "null_resource" "codecommit_push" {
  count = var.mirror_frequency != "never" ? 1 : 0
  triggers = {
    import = local.import_triggers[var.mirror_frequency]
  }
  provisioner "local-exec" {
    command = <<EOF
cd ${element(split("/", var.source_repository), -1)} && \
  (git remote add codecommit ${aws_codecommit_repository.repository.clone_url_http} || true) && \
  git push codecommit --mirror
EOF
  }
  depends_on = [null_resource.source_clone]
}

locals {
  import_triggers = {
    once    = "once"
    monthly = formatdate("MM", timestamp())
    daily   = formatdate("DD", timestamp())
    hourly  = formatdate("hhZ", timestamp())
    always  = timestamp()
  }

  // ensure trailing slash where source registry is specified..
  import_registry = length(var.source_repository) > 0 ? join("", [split("/", var.source_repository)[0], "/"]) : ""
}
