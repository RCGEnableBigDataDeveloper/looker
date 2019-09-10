connection: "google_bigquery_1"

# include all the views
include: "*.view"

datagroup: test_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_project_default_datagroup

explore: feeds {}

explore: rfid_event {}

explore: rfid_event_1 {}

explore: rfid_event_error_records {
  join: rfid_event_error_records__attributes {
    view_label: "Rfid Event Error Records: Attributes"
    sql: LEFT JOIN UNNEST(${rfid_event_error_records.attributes}) as rfid_event_error_records__attributes ;;
    relationship: one_to_many
  }
}
