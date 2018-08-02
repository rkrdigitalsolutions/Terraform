# Download the latest Ghost image
# Download the latest Ghost image
module "image" {
  source = "./image"
  image = "${var.image}"
}

# Start the Container
module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  name = "${var.container_name}"
  int_port = "${var.int_port}"
  ext_port = "${var.ext_port}"
}

