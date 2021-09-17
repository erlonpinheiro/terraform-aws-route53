#-----terraform-aws-route53/outputs.tf

output "name_server_for_delegation1" {
  description = "The first nameserver to be configured as subdomain NS record at the domain name."
  value       = element(concat(aws_route53_zone.new.*.name_servers, list("")), 0)
}

output "name_server_for_delegation2" {
  description = "The second nameserver to be configured as subdomain NS record at the domain name."
  value       = element(concat(aws_route53_zone.new.*.name_servers, list("")), 1)
}

output "name_server_for_delegation3" {
  description = "The third nameserver to be configured as subdomain NS record at the domain name."
  value       = element(concat(aws_route53_zone.new.*.name_servers, list("")), 2)
}

output "name_server_for_delegation4" {
  description = "The fourth nameserver to be configured as subdomain NS record at the domain name."
  value       = element(concat(aws_route53_zone.new.*.name_servers, list("")), 3)
}

output "dns_record" {
  description = "DNS entry created."
  value       = aws_route53_record.new.0.records
}

output "zone_id" {
  description = "Zone ID from the created DNS."
  value       = aws_route53_zone.new.0.zone_id
}
