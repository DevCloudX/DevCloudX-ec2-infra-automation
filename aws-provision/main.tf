provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "null_resource" "provision_ec2" {
  count = length(var.instance_ips)

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file(var.private_key_path)
    host        = element(var.instance_ips, count.index)
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras install docker -y",
      "sudo systemctl start docker",
      "sudo systemctl enable docker",
      "sudo yum install -y java-1.8.0-openjdk",
      "wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz",
      "tar -xzf apache-tomcat-9.0.85.tar.gz",
      "sudo mv apache-tomcat-9.0.85 /opt/tomcat"
    ]
  }
}
