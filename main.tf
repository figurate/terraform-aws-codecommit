/**
 * # ![AWS](aws-logo.png) CodeCommit Repository
 *
 * [![CI](https://github.com/figurate/terraform-aws-codecommit-repository/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-aws-codecommit-repository/actions/workflows/main.yml)
 *
 *
 * ![AWS CodeCommit Repository](aws_codecommit_repository.png)
 *
 * Purpose: Defaults for CodeCommit repositories.
 */
resource "aws_codecommit_repository" "repository" {
  repository_name = var.repository_name
  description     = var.description
  default_branch  = var.default_branch
}
