variable "project_name" {
    description = "Name of the project"
    type        = string
    default     = "webserver_v2"
}

variable "environment" {
    description = "Name of the environment"
    type        = string
    default     = "dev"
}

variable "resource_tags" {
    description = "Tags to set for all resources"
    type        = map(string)
    default     = { }
}

variable "region" {
    description = "The AWS region to use (singular)"
    type = string
    default = "us-east-1"
}
variable "key_name" {
  description = "Name of the key pair to use."
  type        = string
}

variable "my_cidr" {
  description = "The IP range that can connect to the instance."
  type        = string
  default     = "0.0.0.0/0"
}

variable "bucket_arn" {
  description = "The ARN of the bucket containing the webserver files. The EC2 instance will pull any hosted files from this bucket."
  type        = string
}

variable "bucket_name" {
  description = "The name of the bucket containing the webserver files. The EC2 instance will pull any hosted files from this bucket."
  type        = string
}
/*
variable "db-name" {
  description = "A name for the database within mariadb to use."
  type        = string
  default     = "fortunes"
}

variable "DBrootPASS" {
  description = "Secure password for the root user of the database"
  type        = string
  default     = "iRs00!337Laa"
}

variable "UsersDBName" {
  description = "A name for the table to store users within the mariadb created above to use."
  type        = string
  default     = "users"
}

variable "AppDBName" {
  description = "A name for the table to store app results within the mariadb created above to use."
  type        = string
  default     = "fortunes"
}

variable "DBuserPASS" {
  description = "Secure password for the root user of the database"
  type        = string
  default     = "iRs00!337Laa"
}

variable "DBUser" {
  description = "Name of the db operator on the users and app tables."
  type        = string
  default     = "tim"
}
*/