# terraform-gitlab-project_push_mirror

Terraform module to manage the following Twingate resources:

* gitlab_project_push_mirror

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_group" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-group/local"
  version = "2.0.0"

  name = "Example (group)"
  path = "example-group-48165"
}

module "gitlab_project" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-project/local"
  version = "2.0.0"

  name = "example-project"

  description  = "Example (project)"
  namespace_id = module.gitlab_group.id
}

module "gitlab_project_puash_mirror" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-project-push-mirror/local"
  version = "2.0.0"

  project = module.gitlab_project.id
  url     = "https://username:password@github.com/example-project"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 19.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 19.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [gitlab_project_push_mirror.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_push_mirror) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_auth_method"></a> [auth\_method](#input\_auth\_method) | Determines the mirror authentication method | `string` | `"password"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Determines if the mirror is enabled | `bool` | `true` | no |
| <a name="input_keep_divergent_refs"></a> [keep\_divergent\_refs](#input\_keep\_divergent\_refs) | Determines if divergent refs are skipped | `bool` | `true` | no |
| <a name="input_mirror_branch_regex"></a> [mirror\_branch\_regex](#input\_mirror\_branch\_regex) | Contains a regular expression. Only branches with names matching the regex are mirrored. Requires only\_protected\_branches to be disabled. Premium and Ultimate only | `string` | `null` | no |
| <a name="input_only_protected_branches"></a> [only\_protected\_branches](#input\_only\_protected\_branches) | Determines if only protected branches are mirrored | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | The ID of the project | `string` | n/a | yes |
| <a name="input_url"></a> [url](#input\_url) | The URL of the remote repository to be mirrored | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | The ID of the project mirror |
| <a name="output_mirror_id"></a> [mirror\_id](#output\_mirror\_id) | The mirror ID |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
