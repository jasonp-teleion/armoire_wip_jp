view: coredata_old_vs_new_reconciliation {
  sql_table_name: finance.coredata_old_vs_new_reconciliation ;;

  dimension: beginning_deferred_revenue {
    type: number
    sql: ${TABLE}."beginning_deferred_revenue" ;;
  }
  dimension: change_in_deferred_revenue {
    type: number
    sql: ${TABLE}."change_in_deferred_revenue" ;;
  }
  dimension: deferred_revenue_diff {
    type: number
    sql: ${TABLE}."deferred_revenue_diff" ;;
  }
  dimension: discounts_diff {
    type: number
    sql: ${TABLE}."discounts_diff" ;;
  }
  dimension: excluded_platform_fees_for_audit {
    type: number
    sql: ${TABLE}."excluded_platform_fees_for_audit" ;;
  }
  dimension: gross_sales_diff {
    type: number
    sql: ${TABLE}."gross_sales_diff" ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."month_date" ;;
  }
  dimension: net_sales_diff {
    type: number
    sql: ${TABLE}."net_sales_diff" ;;
  }
  dimension: new_deferred_revenue {
    type: number
    sql: ${TABLE}."new_deferred_revenue" ;;
  }
  dimension: new_reconstructed_discounts_given {
    type: number
    sql: ${TABLE}."new_reconstructed_discounts_given" ;;
  }
  dimension: new_reconstructed_gross_sales {
    type: number
    sql: ${TABLE}."new_reconstructed_gross_sales" ;;
  }
  dimension: new_reconstructed_net_sales {
    type: number
    sql: ${TABLE}."new_reconstructed_net_sales" ;;
  }
  dimension: new_reconstructed_sales_tax_collected {
    type: number
    sql: ${TABLE}."new_reconstructed_sales_tax_collected" ;;
  }
  dimension: new_reconstructed_stripe_fees_excluding_platform {
    type: number
    sql: ${TABLE}."new_reconstructed_stripe_fees_excluding_platform" ;;
  }
  dimension: new_reconstructed_total_earned_revenue {
    type: number
    sql: ${TABLE}."new_reconstructed_total_earned_revenue" ;;
  }
  dimension: new_source_revenue {
    type: number
    sql: ${TABLE}."new_source_revenue" ;;
  }
  dimension: old_discounts_given {
    type: number
    sql: ${TABLE}."old_discounts_given" ;;
  }
  dimension: old_gross_sales {
    type: number
    sql: ${TABLE}."old_gross_sales" ;;
  }
  dimension: old_net_sales {
    type: number
    sql: ${TABLE}."old_net_sales" ;;
  }
  dimension: old_sales_tax_collected {
    type: number
    sql: ${TABLE}."old_sales_tax_collected" ;;
  }
  dimension: old_stripe_fees {
    type: number
    sql: ${TABLE}."old_stripe_fees" ;;
  }
  dimension: old_total_deferred_revenue_balance {
    type: number
    sql: ${TABLE}."old_total_deferred_revenue_balance" ;;
  }
  dimension: old_total_earned_revenue {
    type: number
    sql: ${TABLE}."old_total_earned_revenue" ;;
  }
  dimension: old_vs_new_reconstructed_revenue_diff {
    type: number
    sql: ${TABLE}."old_vs_new_reconstructed_revenue_diff" ;;
  }
  dimension: old_vs_new_source_revenue_diff {
    type: number
    sql: ${TABLE}."old_vs_new_source_revenue_diff" ;;
  }
  dimension: sales_tax_diff {
    type: number
    sql: ${TABLE}."sales_tax_diff" ;;
  }
  dimension: stripe_fees_diff {
    type: number
    sql: ${TABLE}."stripe_fees_diff" ;;
  }
  measure: count {
    type: count
  }
}
