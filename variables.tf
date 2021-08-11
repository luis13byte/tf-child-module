#
# Variables de entrada

# PATH variables

variable "scripts_directory_client"{
 description = "Ruta de directorio de scripts"
 type        = string
}

# VPC variables

variable "instance_type_client" {
  description = "Tipo de instancia"
  type        = string
}

variable "instance_name_client" {
  description = "Nombre de la instancia"
  type        = string
}

variable "sec_groups_list_client" {
  description = "Lista de security groups"
  type        = list
}
