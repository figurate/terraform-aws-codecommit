variable "repository_name" {
  description = "CodeCommit repository name"
}

variable "description" {
  description = "Repository description"
  default     = null
}

variable "default_branch" {
  description = "Default Git branch"
  default     = "master"
}

variable "mirror_frequency" {
  description = "Indicates how often to mirror updates from the source repository (`once`, `weekly`, `daily`, `hourly`, `always`, `never`)"
  default     = "daily"
}

variable "source_repository" {
  description = "The source Git repository for mirroring updates"
  default     = ""
}
