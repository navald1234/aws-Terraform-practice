# 🗂️ Terraform Workspaces

Practice with **Terraform workspaces** — multiple state files from a single configuration (for example `dev` and `stage`).

## Key commands

```bash
terraform workspace list          # show workspaces (* = current)
terraform workspace new dev       # create and switch to "dev"
terraform workspace select dev    # switch to an existing workspace
terraform workspace show          # print the current workspace
terraform workspace delete dev    # remove a workspace (destroy its resources first)
```

## Using the workspace name in code

```hcl
locals {
  env = terraform.workspace
}

resource "aws_s3_bucket" "example" {
  bucket = "my-app-${local.env}-bucket"   # bucket names must be globally unique
}
```

## How to run

```bash
cd wrokspace
terraform init
terraform workspace new dev
terraform plan
terraform apply
```

## Clean up

Destroy resources in **each** workspace before deleting it:

```bash
terraform workspace select dev
terraform destroy
```
