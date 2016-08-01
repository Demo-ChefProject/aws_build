provider "aws" {
	region = "${var.region.west}"
}

resource "aws_instance" "test" {
	ami = "${lookup(var.amis, var.region.west)}"
	instance_type = "${var.instance_type}"
	key_name = "${var.ssh_keys.west}"

	security_groups = ["${var.security_group.west}"]
	
	tags {
		name = "build-Test"
	}
}