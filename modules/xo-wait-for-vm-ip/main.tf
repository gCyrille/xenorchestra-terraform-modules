
resource "null_resource" "xo_wait_for_vm_ip" {
  provisioner "local-exec" {
    command = <<-EOF
    #!/bin/bash
    get_vm_mainIpAddress() {
        local auth_token="${var.xo_token}"
        local api_url="http://${var.xo_url}/rest/v0/vms/${var.vm_id}"
        curl -s -X GET -H "Cookie: authenticationToken=$auth_token" "$api_url" | jq -r '.mainIpAddress'
    }
    while [ ! "$(get_vm_mainIpAddress)" != "null" ] ; do
        sleep 1
    done
    EOF
  }
}
