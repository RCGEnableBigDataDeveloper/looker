view: rfid_event {
  sql_table_name: rcg_big_data.rfid_event ;;

  dimension: arrived {
    type: number
    sql: ${TABLE}.arrived ;;
    link: {
      label: "Filter by {{ asn_id | epc }}"
      url: "filter::q={{ asn_id | epc }}"
      icon_url: "https://google.com/favicon.ico"
    }
  }

  dimension: asn_id {
    type: string
    sql: ${TABLE}.asnId ;;
  }

  dimension: confidence {
    type: number
    sql: ${TABLE}.confidence ;;
  }

  dimension: encode_format {
    type: string
    sql: ${TABLE}.encode_format ;;
  }

  dimension: epc {
    type: number
    sql: ${TABLE}.epc ;;
  }

  dimension: epc_state {
    type: string
    sql: ${TABLE}.epcState ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: facility_id {
    type: string
    sql: ${TABLE}.facility_id ;;
  }

  dimension: filter_value {
    type: number
    sql: ${TABLE}.filter_value ;;
  }

  dimension: gtin {
    type: number
    sql: ${TABLE}.gtin ;;
  }

  dimension: last_read {
    type: number
    sql: ${TABLE}.last_read ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.LNG ;;
  }

  dimension: location {
    type: location
    sql_latitude:${lat} ;;
    sql_longitude:${lng} ;;
  }

  dimension_group: timestmp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestmp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
