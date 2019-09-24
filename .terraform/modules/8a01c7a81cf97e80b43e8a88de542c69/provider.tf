provider "google" {
    project = "cops-sandbox-1"
    credentials = "${file("C:\\Users\\rwebb18\\Documents\\terraform-test\\cops-sandbox-1.json")}"
    region = "us-west1"
    version = "2.5"
}