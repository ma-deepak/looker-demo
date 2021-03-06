connection: "ecommerce"

# include all the views
include: "/views/**/*.view"
include: "dk.dashboard"

datagroup: ecommerce_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "3 hour"
}

persist_with: ecommerce_default_datagroup

explore: sales {}
explore: categories {}
explore: products {}
explore: product_list {}
# explore: connection_reg_r3 {}
