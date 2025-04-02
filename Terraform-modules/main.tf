module "myinstance" {
   source = "./instance"
   iname = "module-server"
   ikey = "my-key-pair"
   ami_id = "ami-02f624c08a83ca16f"
   itype = "t2.micro"
   volume_size = 10
   icount = 1
   security_group_id = "my-own-sec"

}


module "mys3" {
   source = "./bucket"
   bucket_name = "terraform.module.s3.bucket.ajay"

}

module "mysec-group" {
    source = "./security"
    sec_name = "terraform-module-sg"

}

output "mysec-group" {
  value = module.mysec-group.security_group_id
}