variable "region" {
  type = string
  description = "Name of the Region"
}
variable "finops-cluster" {
   type = string
   description = "Name of the Cluster"
 }
variable "finops-ecr" {
  type = string
  description = "Name of image tag"
}
variable "tags" {
    type = map(string)
    description = "key value for tagging"
}
variable "image_tag_mutability" {
  type = string
  description = "Name of the image"
}
# variable "repository" {
#   type = string
#   description = "name of repository"
# }
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
# variable "countNumber" {
#   type = number
#   description = "Count of number"
# }