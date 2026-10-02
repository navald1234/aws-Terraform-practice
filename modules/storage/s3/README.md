# S3 Module

Reusable Terraform module that creates an Amazon S3 bucket.

## Usage

```hcl
module "s3" {
  source = "../../../modules/storage/s3"

  # pass the input variables listed below
}
```

<!-- BEGIN_TF_DOCS -->
<!-- Inputs, outputs, providers and requirements are generated here. -->
<!-- END_TF_DOCS -->

---

### Generate the inputs/outputs tables automatically

Install [terraform-docs](https://terraform-docs.io/) and run this inside the module folder:

```bash
terraform-docs markdown table --output-file README.md --output-mode inject .
```

It fills the block above from your `variables.tf` and `outputs.tf`, so the docs never go out of date.
