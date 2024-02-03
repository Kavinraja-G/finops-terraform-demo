module "webapp" {
  source                           = "./modules/web-app"

  instance_type                    = "t3.large"
  root_block_device_volume_size    = 100
  block_device_volume_size         = 250
  block_device_iops                = 600

  hello_world_function_memory_size = 1
}