resource "gitlab_project_push_mirror" "this" {
  project = var.project
  url     = var.url

  auth_method             = var.auth_method
  enabled                 = var.enabled
  keep_divergent_refs     = var.keep_divergent_refs
  mirror_branch_regex     = var.mirror_branch_regex
  only_protected_branches = var.only_protected_branches
}

moved {
  from = gitlab_project_mirror.this
  to   = gitlab_project_push_mirror.this
}
