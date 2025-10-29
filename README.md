<!-- BEGIN_TF_DOCS -->
# MrMgr (Github)

```
provider "github" {
  token = var.token # or `GITHUB_TOKEN`
}

module "github" {
  source = "github.com/opszero/terraform-github-mrmgr"

  owner = "opszero"

  repos = {
    "example" = {
      description = "example repo"
      visibility  = "public"
    }
  }

  teams = {
    "Biz" = {
      team_description     = "test team"
      privacy              = "closed"
      users                = ["abhiyerra"]
      role                 = ["member"]
      team_repos           = ["example"]
      team_repo_permission = ["push"]
    },
    "Dev" = {
      team_description     = "test team"
      privacy              = "closed"
      users                = ["abhiyerra"]
      role                 = ["member"]
      team_repos           = []
      team_repo_permission = []
    },
    "DevOps" = {
      team_description     = "test team"
      privacy              = "closed"
      users                = []
      role                 = []
      team_repos           = []
      team_repo_permission = []
    }
  }
}

```
## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | n/a |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `any` | n/a | yes |
| <a name="input_repos"></a> [repos](#input\_repos) | n/a | `any` | n/a | yes |
| <a name="input_teams"></a> [teams](#input\_teams) | n/a | `any` | n/a | yes |
## Resources

| Name | Type |
|------|------|
| [github_repository.repo](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/repository) | resource |
## Outputs

No outputs.
# 🚀 Built by opsZero!

<a href="https://opszero.com"><img src="https://opszero.com/img/common/opsZero-Logo-Large.webp" width="300px"/></a>

[opsZero](https://opszero.com) provides software and consulting for Cloud + AI. With our decade plus of experience scaling some of the world’s most innovative companies we have developed deep expertise in Kubernetes, DevOps, FinOps, and Compliance.

Our software and consulting solutions enable organizations to:

- migrate workloads to the Cloud
- setup compliance frameworks including SOC2, HIPAA, PCI-DSS, ITAR, FedRamp, CMMC, and more.
- FinOps solutions to reduce the cost of running Cloud workloads
- Kubernetes optimized for web scale and AI workloads
- finding underutilized Cloud resources
- setting up custom AI training and delivery
- building data integrations and scrapers
- modernizing onto modern ARM based processors

We do this with a high-touch support model where you:

- Get access to us on Slack, Microsoft Teams or Email
- Get 24/7 coverage of your infrastructure
- Get an accelerated migration to Kubernetes

Please [schedule a call](https://calendly.com/opszero-llc/discovery) if you need support.

<br/><br/>

<div style="display: block">
  <img src="https://opszero.com/img/common/aws-advanced.png" alt="AWS Advanced Tier" width="150px" >
  <img src="https://opszero.com/img/common/aws-devops-competency.png" alt="AWS DevOps Competency" width="150px" >
  <img src="https://opszero.com/img/common/aws-eks.png" alt="AWS EKS Delivery" width="150px" >
  <img src="https://opszero.com/img/common/aws-public-sector.png" alt="AWS Public Sector" width="150px" >
</div>
<!-- END_TF_DOCS -->