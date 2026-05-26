output "id" {
  description = "The ID of the project mirror"
  value       = gitlab_project_push_mirror.this.id
}

output "mirror_id" {
  description = "The mirror ID"
  value       = gitlab_project_push_mirror.this.mirror_id
}
