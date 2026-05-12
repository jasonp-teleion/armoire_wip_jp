view: mart_revenue_journal_entry {
  sql_table_name: finance.mart_revenue_journal_entry ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}."account_name" ;;
  }
  dimension: credit {
    type: number
    sql: ${TABLE}."credit" ;;
  }
  dimension: debit {
    type: number
    sql: ${TABLE}."debit" ;;
  }
  dimension: line_number {
    type: number
    sql: ${TABLE}."line_number" ;;
  }
  dimension: memo {
    type: string
    sql: ${TABLE}."memo" ;;
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
  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
