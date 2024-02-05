resource "aws_autoscaling_group" "web_asg" {
  launch_configuration = aws_launch_configuration.web_lc.id
  min_size             = 1
  max_size             = 3
  desired_capacity     = 2
  vpc_zone_identifier  = [aws_subnet.public_web_subnet_a.id, aws_subnet.public_web_subnet_c.id]

  tag {
    key                 = "Name"
    value               = "web-instance"
    propagate_at_launch = true
  }
}
