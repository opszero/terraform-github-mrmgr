<!-- BEGIN_TF_DOCS -->
# MrMgr (Github)

```
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
<!-- END_TF_DOCS -->