# Create ECR repository
resource "aws_ecr_repository" "repository"{
    
    for_each = toset(var.repository_list)
    
    name    =   each.key
    
    image_tag_mutability = "MUTABLE"
    encryption_configuration {
        encryption_type = "AES256"
    }
    image_scanning_configuration {
        scan_on_push = false
    }
}

# Build docker container image and push to ECR
resource "docker_registry_image" "container" {
    for_each = toset(var.repository_list)

    name    =   "${aws_ecr_repository.repository[each.key].repository_url}:latest"

    build{
        context =   "..\\lambdas\\${each.key}"
        dockerfile  =   "dockerfile"
    }

    depends_on = [
        aws_ecr_repository.repository,
    ]
}

# Setup credentials to push to ECR