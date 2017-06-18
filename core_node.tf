resource "aws_instance" "core_node" {
    ami = "${lookup(var.amis, var.aws_region)}"
    instance_type = "${lookup(var.flavors, var.core_node_size)}"
    key_name = "${aws_key_pair.core_node.key_name}"
    security_groups = [
        "${aws_security_group.ssh_only.id}"
    ]
    subnet_id = "${aws_subnet.vpc_public_subnet.id}"
    associate_public_ip_address = true
    source_dest_check = false

    tags {
        Name = "${var.prefix}_core_node"
    }

    connection {
      type = "ssh"
      user = "${var.core_node_user}"
      private_key = "${file("${var.aws_private_key}")}"
      timeout = "5m"
    }

    # provisioner "file" {
    #     source = "${var.aws_private_key}"
    #     destination = "/home/ubuntu/.ssh/id_rsa"
    # }

    # provisioner "file" {
    #     source = "${var.aws_public_key}"
    #     destination = "/home/ubuntu/.ssh/id_rsa.pub"
    # }
}

resource "aws_key_pair" "core_node" {
  key_name = "${var.prefix}_core_node_key"
  public_key = "${file("${var.aws_public_key}")}"
}
