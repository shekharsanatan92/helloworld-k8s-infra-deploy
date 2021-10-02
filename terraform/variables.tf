variable "region" {}
variable account_id {}
variable environment {}
variable cidr_block {}
variable private_subnet_list {
    type = list
}
variable public_subnet_list {
    type = list
}
variable wg_1_instance_type {}
variable wg_2_instance_type {}
variable wg_1_asg_desired_capacity {}
variable wg_2_asg_desired_capacity {}
