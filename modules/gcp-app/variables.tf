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
    default = "gcr.io/cops-sandbox-1/nodeapp:1.0"
}
variable "cpuLimit" {
    default = "1"
}
variable "memoryLimit" {
    default = "512M"
}
variable "cpuRequest" {
    default = "250m"
}
variable "memoryRequest" {
    default = "512m"
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
    default = "C:\\Users\\rwebb18\\.kube\\config"
}

variable "service-account-email"{
    default = "759614300743-compute@developer.gserviceaccount.com"
}
