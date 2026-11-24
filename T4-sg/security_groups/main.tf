resource "aws_security_group" "task-sg" {
  name        = "task-sg"
  description = "Security group for task resources"
  vpc_id      = var.vpc_id

  tags = {
    Name = "task-sg"
  }


ingress {
description = "Allow SSH"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

ingress {
  description = "Allow HTTP"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

egress {
  description = "Allow all outbound traffic"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

}




