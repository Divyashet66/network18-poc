
provider "google" {
  #version     = "3.5.0"
  credentials = file("tech-rnd-project-001635646591.json")
  project     = var.project
  region      = var.region

}
