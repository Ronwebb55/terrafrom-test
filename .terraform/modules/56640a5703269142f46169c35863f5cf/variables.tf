variable "appName"{
    default = "testapp"
}
variable "appLabel" {
    default = "testapp"
}
variable "appPort" {
    default = "8081"
}
variable "location" {
    default = "us-central1"
}
variable "imageName" {
    default = "testnode.azurecr.io/test-node:1.0"
}
variable "cpuLimit" {
    default = "250M"
}
variable "memoryLimit" {
    default = "250M"
}
variable "cpuRequest" {
    default = "250m"
}
variable "memoryRequest" {
    default = "250m"
}
variable "livenessprobePath"{
    default = "/"
}
variable "client_certificate"{

}
variable "client_key" {

}
variable "cluster_hostname" {

}
variable "cluster_ca_certificate"{

}
variable "config_path" {
    
}
variable "token" {
    
}
variable "username" {
    
}
variable "password" {
    
}




