variable "finops-ecr" {
  type = string
  description = "Name of the ECR"
}
variable "image_tag_mutability" {
  type = string
  description = "Name of the image repo"
}
variable "tags" {
  type = map(string)
  description = "Name of the tags"
}
variable "finopslifecyclepolicy" {
  type = bool
  description = "Name of life cycle policy"
}
variable "tagname" {
  type = list
  description = "Description of Lifecyclepolicy"
}
variable "policyenabled" {
  type = bool
  description = "Description of Lifecyclepolicy"
}
# variable "repository" {
#   type = string
#   description = "name of repository"
# }
# variable "rulePriority" {
#   type = number
#   description = "Number of rule priority"
# }
# variable "description" {
#   type = string
#   description = "Name of description"
# }
# variable "tagStatus" {
#   type = string
#   description = "Name of tagstatus"
# }
# variable "countType" {
#   type = string
#   description = "Name of imagespushed"
# }
# variable "countUnit" {
#   type = string
#   description = "Number of days"
# }
variable "settings" {
  type = bool
  description = "Count of number"
}
