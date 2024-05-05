resource "local_file" "hello_world" {
  content  = "h = "Hello world" print(h)"
  filename = "${path.module}/hello_world.py"
}

terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}
