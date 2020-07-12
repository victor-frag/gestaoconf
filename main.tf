module "app_node" {
  source = "./modules/app_node"
  #source = "git::https://github.com/<seuusuario>/infra-modulo-app-node.git?ref=v1.0.0"
  project_name = "app"
  db_name = "pg_db"
  db_user = "pg_user"
  db_password = "stupid_pass" # No mundo real, deve estar externalizado
  db_instance_type = "t2.micro"
  app_instance_type = "t2.micro"
  app_src_dir = "node-js-getting-started" #dir com o fonte da aplicação
}

output "endereco_app" {
  value = module.app_node.public_dns 
}
