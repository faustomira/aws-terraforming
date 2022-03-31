variable "region"{
    description =   "AWS region"
    type    =   string
    default =   "sa-east-1"
}

variable "repository_list"{
    description =   "List of repo names"
    type    =   list
    default =   ["simplelambdatest"]
}

variable "SOME_ENV_VARIABLE"{
    type    =   string
}
