output "domain" { value = "${aws_eip.core_node.public_ip}.nip.io" }

output "core_node_ip" { value = "${aws_eip.core_node.public_ip}" }

output "core_node_user" { value = "stackato" }

output "core_node_password" { value = "stackato" }

output "region" { value = "${var.aws_region}" }

output "az" { value = "${var.aws_az}" }

# output "default_key_name" { value = "${var.aws_az}" }
