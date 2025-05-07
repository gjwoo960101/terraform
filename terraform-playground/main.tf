terraform {
  required_providers {
    random = {
        source = "hashicorp/random"
    }
    local = {
        source = "hashicorp/local"
    }
    null = {
        source = "hashicorp/null"
    }
  }
}

provider "random" {
  
}

provider "local" {
  
}

provider "null" {
  
}

resource "random_pet" "pet_name" {
  length = 2
}

resource "local_file" "write_pet_name" {
  content = "Your random pet name is: ${random_pet.pet_name.id}"
  filename = "${path.module}/pet_name.txt"
}


resource "null_resource" "log_output" {
  provisioner "local-exec" {
    command = "echo 'Your random pet name is: ${random_pet.pet_name.id}'"
  }
  # pet name이 바뀔 때마다 실행되도록 트리거 설정
  triggers = {
    pet_name = random_pet.pet_name.id
  }
}

