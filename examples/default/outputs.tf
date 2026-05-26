output "id" {
  description = "The ID of the project mirror"
  value       = module.gitlab_project_push_mirror.id
}

output "mirror_id" {
  description = "The mirror ID"
  value       = module.gitlab_project_push_mirror.mirror_id
}
