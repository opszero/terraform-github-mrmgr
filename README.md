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

<a href="https://opszero.com"><img src="https://opszero.com/wp-content/uploads/2024/07/opsZero_logo_svg.svg" width="300px"/></a>

Since 2016 [opsZero](https://opszero.com) has been providing Kubernetes
expertise to companies of all sizes on any Cloud. With a focus on AI and
Compliance we can say we seen it all whether SOC2, HIPAA, PCI-DSS, ITAR,
FedRAMP, CMMC we have you and your customers covered.

We provide support to organizations in the following ways:

- [Modernize or Migrate to Kubernetes](https://opszero.com/solutions/modernization/)
- [Cloud Infrastructure with Kubernetes on AWS, Azure, Google Cloud, or Bare Metal](https://opszero.com/solutions/cloud-infrastructure/)
- [Building AI and Data Pipelines on Kubernetes](https://opszero.com/solutions/ai/)
- [Optimizing Existing Kubernetes Workloads](https://opszero.com/solutions/optimized-workloads/)

We do this with a high-touch support model where you:

- Get access to us on Slack, Microsoft Teams or Email
- Get 24/7 coverage of your infrastructure
- Get an accelerated migration to Kubernetes

Please [schedule a call](https://calendly.com/opszero-llc/discovery) if you need support.

<br/><br/>

<div style="display: block">
  <img src="https://opszero.com/wp-content/uploads/2024/07/aws-advanced.png" width="150px" />
  <img src="https://opszero.com/wp-content/uploads/2024/07/AWS-public-sector.png" width="150px" />
  <img src="https://opszero.com/wp-content/uploads/2024/07/AWS-eks.png" width="150px" />
</div>
<!-- END_TF_DOCS -->