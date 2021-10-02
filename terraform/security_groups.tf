
resource "aws_security_group" "worker_group_ssh_access" {
  name_prefix = "worker_group_ssh_access"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",           # sample office vpn range
    ]
  }
}
