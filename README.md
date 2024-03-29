# ![AWS](aws-logo.png) CodeCommit Repository

[![CI](https://github.com/figurate/terraform-aws-codecommit-repository/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-aws-codecommit-repository/actions/workflows/main.yml)

![AWS CodeCommit Repository](aws\_codecommit\_repository.png)

Purpose: Defaults for CodeCommit repositories.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| default\_branch | Default Git branch | `string` | `"master"` | no |
| description | Repository description | `any` | `null` | no |
| mirror\_frequency | Indicates how often to mirror updates from the source repository (`once`, `weekly`, `daily`, `hourly`, `always`, `never`) | `string` | `"daily"` | no |
| repository\_name | CodeCommit repository name | `any` | n/a | yes |
| source\_repository | The source Git repository for mirroring updates | `string` | `""` | no |

## Outputs

No output.

