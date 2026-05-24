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
  for_each      = var.repos
  name          = each.key
  description   = lookup(each.value, "description", null)
  visibility    = lookup(each.value, "visibility", null)
  has_downloads = lookup(each.value, "has_downloads", true)
  has_issues    = lookup(each.value, "has_issues", true)
  has_projects  = lookup(each.value, "has_projects", true)
  has_wiki = lookup(each.value, "has_wiki", true)
  homepage_url = lookup(each.value, "homepage_url", "")
  is_template = lookup(each.value, "is_template", false)

  allow_update_branch         = true
  delete_branch_on_merge      = true
  has_discussions             = lookup(each.value, "has_discussion", null)
  vulnerability_alerts = true
}

# resource "github_branch_protection" "protection" {
#   for_each = var.repos

#   repository_id = github_repository.repo[each.key].node_id
#   pattern       = lookup(each.value, "branch", "main")

#   enforce_admins = false

#   required_pull_request_reviews {
#     required_approving_review_count = 1
#   }
#   #   allows_deletions = true

#   #   required_status_checks {
#   #     strict   = false
#   #     contexts = ["ci/travis"]
#   #   }


#   depends_on = [
#     github_repository.repo
#   ]
# }

resource "github_repository_dependabot_security_updates" "dependabot" {
  for_each = var.repos

  repository = github_repository.repo[each.key].id
  enabled    = true
}
