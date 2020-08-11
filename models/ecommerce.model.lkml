connection: "ecommerce"

# include all the views
include: "/views/**/*.view"

datagroup: ecommerce_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ecommerce_default_datagroup

explore: sales {}
explore: categories {}

# explore: connection_reg_r3 {}