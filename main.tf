#-----terraform-aws-route53/main.tf

resource "aws_route53_zone" "new" {
  count   = "${var.public_hosted_zone != "" ? 1 : 0}"
  name    = "${var.public_hosted_zone}"
  comment = "${var.comment}"

  tags = "${merge(
      var.tags
    )}"
}

resource "aws_route53_record" "new" {
  count   = "${var.zone_record != "" ? 1 : 0}"
  zone_id = "${var.zone_id}"
  name    = "${var.record_name}"
  type    = "${var.record_type}"
  ttl     = "${var.record_ttl}"
  record  = "${var.record_record}"
  tags = "${merge(
      var.tags
    )}"
}
