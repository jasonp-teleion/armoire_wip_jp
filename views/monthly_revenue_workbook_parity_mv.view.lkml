view: monthly_revenue_workbook_parity_mv {
  sql_table_name: finance.monthly_revenue_workbook_parity_mv ;;

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: MD5(${TABLE}::text) ;;
  }

  dimension_group: update_month {
    type: time
    timeframes: [raw, month, quarter, year]
    sql: ${TABLE}.update_month ;;
  }

  measure: revenue {
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format_name: usd
  }

  measure: deferred_revenue {
    type: sum
    sql: ${TABLE}.deferred_revenue ;;
    value_format_name: usd
  }

  measure: total_sales {
    type: sum
    sql: ${TABLE}.total_sales ;;
    value_format_name: usd
  }

  measure: total_sales_gross {
    type: sum
    sql: ${TABLE}.total_sales_gross ;;
    value_format_name: usd
  }

  measure: less_discounts {
    type: sum
    sql: ${TABLE}.less_discounts ;;
    value_format_name: usd
  }

  measure: add_sales_tax {
    type: sum
    sql: ${TABLE}.add_sales_tax ;;
    value_format_name: usd
  }

  measure: less_stripe_processing_fees {
    type: sum
    sql: ${TABLE}.less_stripe_processing_fees ;;
    value_format_name: usd
  }

  measure: less_stripe_platform_fee {
    type: sum
    sql: ${TABLE}.less_stripe_platform_fee ;;
    value_format_name: usd
  }

  measure: gross_volume_reconstructed {
    type: sum
    sql: ${TABLE}.gross_volume_reconstructed ;;
    value_format_name: usd
  }

  measure: row_count {
    type: count
  }
}
