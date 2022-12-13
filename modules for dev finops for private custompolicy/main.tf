module "configuration1" {
    source = "./ECR"
    finops-ecr = var.finops-ecr
    image_tag_mutability = var.image_tag_mutability
    tags = var.tags
    finopslifecyclepolicy = var.finopslifecyclepolicy
    tagname = var.tagname
    policyenabled = var.policyenabled
    settings = true
    # rulePriority = var.rulePriority
    # description = var.description
    # tagStatus = var.tagStatus
    # countType = var.countType
    # countUnit = var.countUnit
    # countNumber = var.countNumber
    # repository = var.repository

}
module "configuration2" {
    source = "./ECS"
    finops-cluster = var.finops-cluster
    # ecr = module.configuration1.finops-ecr
  }