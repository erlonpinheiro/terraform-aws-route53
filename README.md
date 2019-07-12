# Terraform module: terraform-aws-route53

This Terraform module creates hosted zones for subdomains.


## Usage

```hcl
module "terraform-aws-route53" {
  source             = "erlonpinheiro/terraform-aws-route53/aws"
  public_hosted_zone = "subdomain.domain.com"
  comment            = "DNS records zone for subdomain zone"
  tags = {
    environment    = "production"
    terraform_tag  = "some_identifier"
  }
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| public\_hosted\_zones | List of subdomains for which to create public hosted zones. | string | `""` | yes |
| tags | The resource tags that will be added to all hosted zone resources. | map | `<map>` | no |
| comment | The hosted zone comment that will be added to all hosted zone resources. | string | `"Managed by Terraform"` | no |


## Outputs

| Name | Description |
|------|-------------|
| name\_server\_for\_delegation1 | The first nameserver to be configured as subdomain NS record at the domain name. |
| name\_server\_for\_delegation2 | The second nameserver to be configured as subdomain NS record at the domain name. |
| name\_server\_for\_delegation3 | The third nameserver to be configured as subdomain NS record at the domain name. |
| name\_server\_for\_delegation4 | The fourth nameserver to be configured as subdomain NS record at the domain name. |


## Authors

Module managed by [Erlon Pinheiro](https://github.com/erlonpinheiro).
