module "repository" {
  source = "../.."

  repository_name   = "terraform-aws-codecommit-repository"
  source_repository = "git@github.com:figurate/terraform-aws-codecommit-repository.git"
}
