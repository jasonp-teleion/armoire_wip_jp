connection: "postgres_snd_conn_jp"

include: "../views/*.view"

datagroup: revenue_snd_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: revenue_snd_default_datagroup

explore: coredata_model_parameters {}
explore: coredata_monthly_bridge {}
explore: coredata_monthly_new_model {}
explore: coredata_monthly_old_model {}
explore: coredata_old_vs_new_reconciliation {}
explore: fct_revenue_schedule_monthly {}
explore: int_revenue_events_normalized {}
explore: mart_revenue_journal_entry {}
explore: mart_revenue_summary_monthly {}
explore: monthly_revenue_workbook_parity {}
explore: revenue_workbook_line_detail {}
explore: stg_revenue_events {}
explore: stg_revenue_events_workbook {}

explore: monthly_revenue_workbook_parity_mv {
  label: "Revenue Summary & Detail"

  join: revenue_workbook_line_detail_mv {
    type: inner
    sql_on:
      ${monthly_revenue_workbook_parity_mv.update_month_raw}
      = ${revenue_workbook_line_detail_mv.update_month_raw} ;;
    relationship: one_to_many
  }
}

#Optional standalone detail explore
explore: revenue_workbook_line_detail_mv {}
