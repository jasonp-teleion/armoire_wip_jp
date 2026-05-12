view: monthly_revenue_workbook_parity {
  sql_table_name: finance.monthly_revenue_workbook_parity ;;

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
  dimension: revenue {
    type: number
    sql: ${TABLE}."revenue" ;;
  }
  dimension: total_sales {
    type: number
    sql: ${TABLE}."total_sales" ;;
  }
  dimension: total_sales_gross {
    type: number
    sql: ${TABLE}."total_sales_gross" ;;
  }
  dimension_group: update_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."update_month" ;;
  }
  measure: count {
    type: count
  }
}
