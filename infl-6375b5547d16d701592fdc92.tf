resource "aws_iam_role" "event-bus-invoke-remote-event-bus-c20" {
  assume_role_policy  = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
  })
  managed_policy_arns = ["arn:aws:iam::896206827756:policy/event_bus_invoke_remote_event_bus"]
  name                = "event-bus-invoke-remote-event-bus"
}

