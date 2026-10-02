# 🌍 Environments

Each folder here is a **root module**: it configures the provider, then calls reusable code from [`modules/`](../modules). Every folder is initialised and applied on its own, so each one keeps its own state.

```text
environments/
└── Storage/s3/     # calls modules/storage/s3
```

| Environment | Path | Uses module |
| ----------- | ---- | ----------- |
| S3 storage | [`Storage/s3`](./Storage/s3) | [`modules/storage/s3`](../modules/storage/s3) |

## Deploy an environment

```bash
cd environments/Storage/s3

terraform init
terraform plan
terraform apply
```

## Destroy

```bash
terraform destroy
```

## Notes

- Change variable values per environment (for example `dev`, `stage`, `prod`) instead of copying module code
- Never commit `*.tfstate` or secret `*.tfvars` files
