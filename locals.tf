locals {
  sufix = "cerberus-${var.tags.env}"
}


locals {
  user_data_apache = file("./scripts/user_data_apache.sh")
  user_data_mysql = file("./scripts/user_data_mysql.sh")
  user_data_default = file("./scripts/user_data_default.sh")

  user_data_map = {
    apache = local.user_data_apache
    mysql  = local.user_data_mysql
  }

}