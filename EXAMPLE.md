# SSM Parameter Store
Below is an examples of calling this module.


## Create SSM Parameter Store
```
module "parameter-store" {
  source = "./parameter-store"
  prefix = "/project_name/env"
  parameters = {
    "ecs/example-api" = {
      arn  = module.ecs_cluster.arn,
      name = module.ecs_cluster.name
    },

    "rds/payment-db" = {
      db_username = module.rds_aurora_postgresql.db_username,
      db_password = module.rds_aurora_postgresql.db_password,
      db_name     = module.rds_aurora_postgresql.db_name
    }
  }
}
```

