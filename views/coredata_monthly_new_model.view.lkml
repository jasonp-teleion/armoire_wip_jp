view: coredata_monthly_new_model {
  sql_table_name: finance.coredata_monthly_new_model ;;

  dimension: add_sales_tax {
    type: number
    sql: ${TABLE}."add_sales_tax" ;;
  }
  dimension: deferred_revenue {
    type: number
    sql: ${TABLE}."deferred_revenue" ;;
  }
  dimension: gross_volume_reconstructed {
    type: number
    sql: ${TABLE}."gross_volume_reconstructed" ;;
  }
  dimension: less_discounts {
    type: number
    sql: ${TABLE}."less_discounts" ;;
  }
  dimension: less_stripe_platform_fee {
    type: number
    sql: ${TABLE}."less_stripe_platform_fee" ;;
  }
  dimension: less_stripe_processing_fees {
    type: number
    sql: ${TABLE}."less_stripe_processing_fees" ;;
  }
  dimension_group: loaded {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."loaded_at" ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."month_date" ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}."revenue" ;;
  }
  dimension_group: source_update_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."source_update_month" ;;
  }
  dimension: total_sales {
    type: number
    sql: ${TABLE}."total_sales" ;;
  }
  dimension: total_sales_gross {
    type: number
    sql: ${TABLE}."total_sales_gross" ;;
  }
  measure: count {
    type: count
  }
}
