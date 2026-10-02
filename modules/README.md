# 🧩 Modules

Reusable Terraform building blocks. A module is a folder of `.tf` files that can be called from many environments with different inputs — write once, deploy many times.

## Layout

```text
modules/
└── <domain>/<resource>/
    ├── main.tf        # resources
    ├── variables.tf   # inputs
    └── outputs.tf     # values exposed to the caller
```

| Module | Path | Description |
| ------ | ---- | ----------- |
| S3 | [`storage/s3`](./storage/s3) | Reusable S3 bucket module |

## Using a module

Modules are called from the root configs in [`environments/`](../environments):

```hcl
module "s3" {
  source = "../../../modules/storage/s3"

  # pass the module's input variables here
}
```

## Conventions

- Keep modules free of provider and backend configuration — the caller owns those
- Expose everything the caller might need through `outputs.tf`
- Give every variable a `description` (and a `type`)
- Run `terraform fmt` and `terraform validate` before committing
