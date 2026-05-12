view: coredata_monthly_bridge {
  sql_table_name: finance.coredata_monthly_bridge ;;

  dimension: beginning_deferred_revenue {
    type: number
    sql: ${TABLE}."beginning_deferred_revenue" ;;
  }
  dimension: change_in_deferred_revenue {
    type: number
    sql: ${TABLE}."change_in_deferred_revenue" ;;
  }
  dimension: deferred_revenue {
    type: number
    sql: ${TABLE}."deferred_revenue" ;;
  }
  dimension: discounts_given {
    type: number
    sql: ${TABLE}."discounts_given" ;;
  }
  dimension: excluded_platform_fees {
    type: number
    sql: ${TABLE}."excluded_platform_fees" ;;
  }
  dimension: gross_sales {
    type: number
    sql: ${TABLE}."gross_sales" ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."month_date" ;;
  }
  dimension: net_sales {
    type: number
    sql: ${TABLE}."net_sales" ;;
  }
  dimension: reconstructed_total_earned_revenue {
    type: number
    sql: ${TABLE}."reconstructed_total_earned_revenue" ;;
  }
  dimension: sales_tax_collected {
    type: number
    sql: ${TABLE}."sales_tax_collected" ;;
  }
  dimension: source_revenue {
    type: number
    sql: ${TABLE}."source_revenue" ;;
  }
  dimension: stripe_fees {
    type: number
    sql: ${TABLE}."stripe_fees" ;;
  }
  measure: count {
    type: count
  }
}
