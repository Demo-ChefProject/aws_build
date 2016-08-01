variable "region" {
    default = {
    	east = "us-east-1"
    	west = "us-west-2"
	}
}

variable "amis" {
    default = {
        us-east-1 = "ami-0d729a60"
        us-west-2 = "ami-7172b611"
    }
}

variable "ssh_keys" {
	default = {
		east = "atb-infrastructure"
		west = "atb"
	}
}

variable "instance_type" {
	default = "t2.micro"
}

variable "security_group" {
	default = {
		east = "jenkins-ubuntu-slave"
		west = "atb-ssh-only"
	}
}
