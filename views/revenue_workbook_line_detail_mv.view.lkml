view: revenue_workbook_line_detail_mv {
  sql_table_name: finance.revenue_workbook_line_detail_mv ;;

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: MD5(${TABLE}::text) ;;
  }

  dimension_group: update_month {
    type: time
    timeframes: [raw, date, month, quarter, year]
    sql: ${TABLE}.update_month ;;
  }

  dimension: balance_transaction_id { type: string sql: ${TABLE}.balance_transaction_id ;; }
  dimension: balance_transaction_source { type: string sql: ${TABLE}.balance_transaction_source ;; }
  dimension: reporting_category { type: string sql: ${TABLE}.reporting_category ;; }
  dimension: bt_type { type: string sql: ${TABLE}.bt_type ;; }
  dimension: balance_transaction_description { type: string sql: ${TABLE}.balance_transaction_description ;; }
  dimension: customer_name { type: string sql: ${TABLE}.customer_name ;; }
  dimension: customer_email { type: string sql: ${TABLE}.customer_email ;; }
  dimension: invoice_id { type: string sql: ${TABLE}.invoice_id ;; }
  dimension: subscription_id { type: string sql: ${TABLE}.subscription_id ;; }
  dimension: purchase_type { type: string sql: ${TABLE}.purchase_type ;; }
  dimension: invoice_line_id { type: string sql: ${TABLE}.invoice_line_id ;; }
  dimension: invoice_item_id { type: string sql: ${TABLE}.invoice_item_id ;; }
  dimension: invoice_line_type { type: string sql: ${TABLE}.invoice_line_type ;; }
  dimension: line_item_description { type: string sql: ${TABLE}.line_item_description ;; }

  dimension: line_item_discountable {
    type: yesno
    sql: ${TABLE}.line_item_discountable ;;
  }

  dimension_group: created_utc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_utc ;;
  }

  dimension_group: created_business_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    sql: ${TABLE}.created_business_date ;;
  }

  dimension_group: service_start_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.service_start_date ;;
  }

  dimension_group: service_end_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.service_end_date ;;
  }

  dimension_group: corrected_service_start_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    sql: ${TABLE}.corrected_service_start_date ;;
  }

  dimension_group: corrected_service_end_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    sql: ${TABLE}.corrected_service_end_date ;;
  }

  dimension_group: effective_end_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    sql: ${TABLE}.effective_end_date ;;
  }

  dimension: total_service_days {
    type: number
    sql: ${TABLE}.total_service_days ;;
  }

  dimension: recognized_days_current_month {
    type: number
    sql: ${TABLE}.recognized_days_current_month ;;
  }

  measure: row_count {
    type: count
  }

  measure: reconcilable_gross {
    type: sum
    sql: ${TABLE}.reconcilable_gross ;;
    value_format_name: usd
  }

  measure: reconcilable_fee {
    type: sum
    sql: ${TABLE}.reconcilable_fee ;;
    value_format_name: usd
  }

  measure: reconcilable_net {
    type: sum
    sql: ${TABLE}.reconcilable_net ;;
    value_format_name: usd
  }

  measure: line_item_amount {
    type: sum
    sql: ${TABLE}.line_item_amount ;;
    value_format_name: usd
  }

  measure: line_item_discount {
    type: sum
    sql: ${TABLE}.line_item_discount ;;
    value_format_name: usd
  }

  measure: line_item_amount_after_discount {
    type: sum
    sql: ${TABLE}.line_item_amount_after_discount ;;
    value_format_name: usd
  }

  measure: line_item_tax_amount {
    type: sum
    sql: ${TABLE}.line_item_tax_amount ;;
    value_format_name: usd
  }

  measure: daily_revenue {
    type: sum
    sql: ${TABLE}.daily_revenue ;;
    value_format_name: usd
  }

  measure: adjusted_total {
    type: sum
    sql: ${TABLE}.adjusted_total ;;
    value_format_name: usd
  }

  measure: adjusted_discount {
    type: sum
    sql: ${TABLE}.adjusted_discount ;;
    value_format_name: usd
  }

  measure: adjusted_fee {
    type: sum
    sql: ${TABLE}.adjusted_fee ;;
    value_format_name: usd
  }

  measure: recognized_revenue {
    type: sum
    sql: ${TABLE}.recognized_revenue ;;
    value_format_name: usd
  }

  measure: deferred_revenue {
    type: sum
    sql: ${TABLE}.deferred_revenue ;;
    value_format_name: usd
  }
}
