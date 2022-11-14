resource "github_team" "team" {
  name        = var.team_name
  description = var.team_description
  privacy     = var.team_privacy
}

resource "github_team_membership" "membership" {
  count    = length(var.users)
  team_id  = github_team.team.id
  username = var.users[count.index]
  role     = var.role[count.index]
}

resource "github_team_repository" "team_repo" {
  count      = length(var.team_repos)
  team_id    = github_team.team.id
  repository = var.team_repos[count.index]
  permission = var.team_repo_permission[count.index]
}