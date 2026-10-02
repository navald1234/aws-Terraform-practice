# ☁️ AWS Terraform Practice

Hands-on **Infrastructure as Code (IaC)** practice using **Terraform** on **AWS** — starting from first resources and growing into reusable modules and multi-environment setups.

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonaws&logoColor=white)
![Status](https://img.shields.io/badge/status-learning%20in%20progress-blue)

---

## 🎯 Purpose

This repository is my learning log for Terraform on AWS. Each folder is a step in the journey: fundamentals first, then modules, environments, and workspaces — the same way infrastructure is organised on real projects.

## 🧭 Topics Covered

- **Terraform fundamentals** – providers, resources, variables, outputs (`day_01` – `day_04`)
- **Networking module** – VPC, subnets, Internet Gateway and NAT Gateway
- **Compute** – EC2 for the `dev` environment
- **DNS & TLS** – DNS records and ACM certificate provisioning
- **Storage** – reusable S3 module consumed from an environment
- **Reusable modules** – one module, many environments
- **Workspaces** – managing multiple states from one configuration

## 📁 Repository Structure

```text
aws-Terraform-practice/
├── day_01/                 # Day-wise fundamentals practice
├── day_02/
├── day_03/
├── day_04/
├── modules/                # Reusable building blocks
│   └── storage/s3/         # S3 module
├── environments/           # Root configs that call the modules
│   └── Storage/s3/         # S3 environment
├── wrokspace/              # Terraform workspace practice
└── .gitignore
```

> Each folder has its own `README.md` with details and run instructions.

## ✅ Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) installed (`terraform -version`)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) configured (`aws configure`)
- An AWS account with permissions for the resources being created

Verify your credentials before running anything:

```bash
aws sts get-caller-identity
```

## 🚀 Usage

Run Terraform from inside the folder you want to deploy:

```bash
cd <folder>            # e.g. day_01 or environments/Storage/s3

terraform init         # download providers & modules
terraform fmt -recursive
terraform validate     # catch syntax errors
terraform plan         # preview changes
terraform apply        # create resources
terraform destroy      # clean up when done
```

## 💸 Cost Warning

Some resources (**NAT Gateway**, **EC2**, Elastic IPs) are billed while they exist. Always run `terraform destroy` after practising.

## 🔐 Security Notes

- Never commit `*.tfstate`, `.terraform/`, or any `*.tfvars` file that contains secrets
- Never hard-code AWS access keys in `.tf` files — use `aws configure` or environment variables
- Review `terraform plan` output before every `apply`

## 🗺️ Roadmap

- [ ] Remote state backend in S3 with state locking
- [ ] CI checks (`fmt`, `validate`, `plan`) with GitHub Actions
- [ ] Static analysis with `tflint` / `checkov`

## 👤 Author

**navald1234** — learning Cloud & DevOps, one `terraform apply` at a time.

- GitHub: [@navald1234](https://github.com/navald1234)
- LinkedIn: [your profile](https://www.linkedin.com/in/naval-dhake)
