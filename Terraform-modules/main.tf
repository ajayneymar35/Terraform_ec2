module "mysecurity" {
   source = "./security"
   sec_name = "mysg1"
}

output "mysecurity" {
  value = module.mysecurity.security_group_id
}


module "myec2" {
    source = "./instance"
    iname = "module-server"
    ami_id = "ami-08fe5144e4659a3b3"
    itype = "t2.micro"
    ikey = "MY-key-pair-mumbai-hari"
    volume_size = 15
    security_group_id = module.mysecurity.security_group_id
}

module "mybucket1001" {
    source = "./bucket"
    bucket_name = "terraform-s3-bucket-hari"
}


   



