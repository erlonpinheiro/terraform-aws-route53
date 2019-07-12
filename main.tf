#-----terraform-aws-route53/main.tf

resource "aws_route53_zone" "new" {
  name    = "${var.public_hosted_zone}"
  comment = "${var.comment}"

  tags = "${merge(
      var.tags
    )}"
}
