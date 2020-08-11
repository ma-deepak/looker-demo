view: sales {
  sql_table_name: public.sales ;;

  dimension: file_type {
    type: string
    sql: ${TABLE}."file_type" ;;
  }

  dimension: itemcount {
    type: number
    sql: ${TABLE}."itemcount" ;;
  }

  dimension: lownetprice {
    type: number
    sql: ${TABLE}."lownetprice" ;;
  }

  dimension: lowuserprice {
    type: number
    sql: ${TABLE}."lowuserprice" ;;
  }

  dimension: marketingtype {
    type: string
    sql: ${TABLE}."marketingtype" ;;
  }

  dimension: new_release_flag {
    type: yesno
    sql: ${TABLE}."new_release_flag" ;;
  }

  dimension: order1 {
    type: number
    sql: ${TABLE}."order1" ;;
  }

  dimension: pricereg {
    type: number
    sql: ${TABLE}."pricereg" ;;
  }

  dimension: releasenumber {
    type: number
    sql: ${TABLE}."releasenumber" ;;
  }

  dimension: releaseyear {
    type: number
    sql: ${TABLE}."releaseyear" ;;
  }

  dimension: sku_number {
    type: number
    sql: ${TABLE}."sku_number" ;;
  }

  dimension: soldcount {
    type: number
    sql: ${TABLE}."soldcount" ;;
  }

  dimension: soldflag {
    type: yesno
    sql: ${TABLE}."soldflag" ;;
  }

  dimension: strengthfactor {
    type: number
    sql: ${TABLE}."strengthfactor" ;;
  }
dimension:  markettypefiletype{
  type: string
  sql: ${file_type}||'-'||${marketingtype} ;;
}
  measure: count {
    type: count
    drill_fields: []
  }
  measure: totalprice {
    type: sum
    sql: ${soldcount}*${lowuserprice} ;;
  }
}
