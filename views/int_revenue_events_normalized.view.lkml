view: int_revenue_events_normalized {
  sql_table_name: finance.int_revenue_events_normalized ;;

  dimension: adjusted_discount {
    type: number
    sql: ${TABLE}."adjusted_discount" ;;
  }
  dimension: adjusted_fee {
    type: number
    sql: ${TABLE}."adjusted_fee" ;;
  }
  dimension: adjusted_total {
    type: number
    sql: ${TABLE}."adjusted_total" ;;
  }
  dimension: balance_transaction_id {
    type: string
    sql: ${TABLE}."balance_transaction_id" ;;
  }
  dimension: bt_type {
    type: string
    sql: ${TABLE}."bt_type" ;;
  }
  dimension_group: corrected_service_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."corrected_service_end_date" ;;
  }
  dimension_group: corrected_service_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."corrected_service_start_date" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."created_date" ;;
  }
  dimension_group: created_month_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."created_month_start" ;;
  }
  dimension_group: created_utc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_utc" ;;
  }
  dimension: customer_email {
    type: string
    sql: ${TABLE}."customer_email" ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}."customer_name" ;;
  }
  dimension: daily_revenue {
    type: number
    sql: ${TABLE}."daily_revenue" ;;
  }
  dimension_group: effective_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."effective_end_date" ;;
  }
  dimension: invoice_id {
    type: string
    sql: ${TABLE}."invoice_id" ;;
  }
  dimension: line_item_amount {
    type: number
    sql: ${TABLE}."line_item_amount" ;;
  }
  dimension: line_item_amount_after_discount {
    type: number
    sql: ${TABLE}."line_item_amount_after_discount" ;;
  }
  dimension: line_item_description {
    type: string
    sql: ${TABLE}."line_item_description" ;;
  }
  dimension: line_item_discount {
    type: number
    sql: ${TABLE}."line_item_discount" ;;
  }
  dimension: line_item_tax_amount {
    type: number
    sql: ${TABLE}."line_item_tax_amount" ;;
  }
  dimension: reconcilable_fee {
    type: number
    sql: ${TABLE}."reconcilable_fee" ;;
  }
  dimension: reconcilable_gross {
    type: number
    sql: ${TABLE}."reconcilable_gross" ;;
  }
  dimension: reconcilable_net {
    type: number
    sql: ${TABLE}."reconcilable_net" ;;
  }
  dimension: reporting_category {
    type: string
    sql: ${TABLE}."reporting_category" ;;
  }
  dimension_group: service_end_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."service_end_date" ;;
  }
  dimension_group: service_start_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."service_start_date" ;;
  }
  dimension: subscription_id {
    type: string
    sql: ${TABLE}."subscription_id" ;;
  }
  dimension: total_service_days {
    type: number
    sql: ${TABLE}."total_service_days" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
