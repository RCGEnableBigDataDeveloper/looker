view: rfid_event {
  sql_table_name: rcg_big_data.rfid_event ;;

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
    link: {
      label: "Details"
      url: "https://localhost:9998/customer?q={{ value }}&asn={{ rfid_event.asn_id._value }}&e={{ rfid_event.event._value }}&f={{ rfid_event.facility_id._value }}"
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
    link: {
      label: "Details"
      url: "https://localhost:9998/map?q={{ location }}&asn={{ rfid_event.asn_id._value }}&e={{ rfid_event.event._value }}&f={{ rfid_event.facility_id._value }}"
      icon_url: "https://looker.com/favicon.ico"
    }
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
