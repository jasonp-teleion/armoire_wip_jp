view: mart_revenue_summary_monthly {
  sql_table_name: finance.mart_revenue_summary_monthly ;;

  dimension: current_month_earned_revenue {
    type: number
    sql: ${TABLE}."current_month_earned_revenue" ;;
  }
  dimension: discounts_given {
    type: number
    sql: ${TABLE}."discounts_given" ;;
  }
  dimension: earned_revenue_from_previous_months {
    type: number
    sql: ${TABLE}."earned_revenue_from_previous_months" ;;
  }
  dimension: gross_sales {
    type: number
    sql: ${TABLE}."gross_sales" ;;
  }
  dimension: month_label {
    type: string
    sql: ${TABLE}."month_label" ;;
  }
  dimension_group: month_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."month_start" ;;
  }
  dimension: net_sales {
    type: number
    sql: ${TABLE}."net_sales" ;;
  }
  dimension: new_deferred_revenue {
    type: number
    sql: ${TABLE}."new_deferred_revenue" ;;
  }
  dimension: sales_tax_collected {
    type: number
    sql: ${TABLE}."sales_tax_collected" ;;
  }
  dimension: stripe_platform_fee {
    type: number
    sql: ${TABLE}."stripe_platform_fee" ;;
  }
  dimension: stripe_processing_fees {
    type: number
    sql: ${TABLE}."stripe_processing_fees" ;;
  }
  dimension: total_deferred_revenue_balance {
    type: number
    sql: ${TABLE}."total_deferred_revenue_balance" ;;
  }
  dimension: total_earned_revenue {
    type: number
    sql: ${TABLE}."total_earned_revenue" ;;
  }
  measure: count {
    type: count
  }
}
