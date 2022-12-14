resource "aws_ecr_repository" "finops-ecr" {
  name                 = var.finops-ecr
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = var.tags
}

resource "aws_ecr_repository_policy" "ecrrepopolicy" {
  repository = aws_ecr_repository.finops-ecr.name

  policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "new policy",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "ecr:BatchCheckLayerAvailability",
                "ecr:PutImage",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "ecr:DescribeRepositories",
                "ecr:GetRepositoryPolicy",
                "ecr:ListImages",
                "ecr:DeleteRepository",
                "ecr:BatchDeleteImage",
                "ecr:SetRepositoryPolicy",
                "ecr:DeleteRepositoryPolicy"
            ]
        }
    ]
}
EOF
}
resource "aws_ecr_lifecycle_policy" "finopslifecyclepolicy" {
  repository = aws_ecr_repository.finops-ecr.name
  count = var.policyenabled == false ? 0 : 1
  policy = <<EOF
    {
    "rules": [
        {
            "rulePriority": 1,
            "description": "${var.tagname[1]}",
            "selection": {
                "tagStatus": "${var.tagname[0]}",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": 14
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}
