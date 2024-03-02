variable "instance_type" {
  description = "The EC2 instance type for the web app"
  type        = string
}

variable "tags" {
  description = "Tags for resources created by Terraform"
  default     = {}
}

variable "root_block_device_volume_size" {
  description = "The size of the root block device volume for the web app EC2 instance"
  type        = number
}

variable "block_device_volume_size" {
  description = "The size of the block device volume for the web app EC2 instance"
  type        = number
}

variable "block_device_iops" {
  description = "The number of IOPS for the block device for the web app EC2 instance"
  type        = number
}

variable "hello_world_function_memory_size" {
  description = "The memory to allocate to the hello world Lambda function"
  type        = number
}