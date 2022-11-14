module "team" {
  for_each = var.teams
  source   = "./team"

  team_name            = each.key
  team_description     = each.value.team_description
  team_privacy         = each.value.privacy
  users                = each.value.users
  role                 = each.value.role
  team_repos           = each.value.team_repos
  team_repo_permission = each.value.team_repo_permission

  depends_on = [
    github_repository.repo
  ]
}

resource "github_repository" "repo" {
  for_each    = var.repos
  name        = each.key
  description = each.value.repo_description

  visibility = each.value.visibility
}
