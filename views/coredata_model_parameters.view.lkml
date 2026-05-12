view: coredata_model_parameters {
  sql_table_name: finance.coredata_model_parameters ;;

  dimension: parameter_description {
    type: string
    sql: ${TABLE}."parameter_description" ;;
  }
  dimension: parameter_name {
    type: string
    sql: ${TABLE}."parameter_name" ;;
  }
  dimension: parameter_value {
    type: number
    sql: ${TABLE}."parameter_value" ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  measure: count {
    type: count
    drill_fields: [parameter_name]
  }
}
