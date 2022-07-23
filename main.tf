#create using random
resource "local_file" "myfile1" {
     filename =local.karandeep
     content = "${random_id.content.hex}"
}

locals {
  karandeep = "random.txt"
  mycontent = "hii i am from  random"
  phone=5971891843
  age=18
}
resource "random_id" "content" {
    byte_length = 6
  
}
resource "random_id" "contnent" {
    byte_length = 4
}


# print By using number
resource "local_file" "myfile2" {
     filename = "using_number.txt"
     content = var.mango
}
variable "mango" {
  type = number
  description = "pass the value"
  default = 7087446052
}
     #By using Locals
resource "local_file" "myfile4" {
     filename =local.kirti
     content = local.content
}
locals {
  kirti = "kirti.txt"
  content = "PSEB"
}
#create by map
resource "local_file" "myfile5" {
     filename = "map.txt"
     content = var.mohali["a1"]
}
  variable "mohali" {
    type = map(any)
    description = "passing the value to content"
    default = {
      "a1" = "dehli"
      "a2" = "mumbai" 

    }
  }
  
  #create  using string
resource "local_file" "myfile6" {
     filename = "String.txt"
     content = var.kharar
}
variable "kharar" {
    type = string
    description = " the value is kharar"
    default = "hey i am from kharar" 
}
#using object
resource "local_file" "myfile7" {
     filename = "object.txt"
     content = var.kurali["content"]
}
variable "kurali" {
    type = object({
    filename=string,
    content=number
  })
description = "pass the value"
default = {
  content = 191563
  filename = "collagerollno"
}
 }

resource "local_file" "myfile8" {
     filename = var.ropar
     content = var.kharar

}
# Output Block
resource "local_file" "myfile9" {
     filename = var.ropar
     content = var.content
     }

     output "output_name" {
     value = local_file.myfile9.content

}


# Passing the content from variables
resource "local_file" "myfile10" {
     filename = var.ropar
     content  = var.content
     }
    



