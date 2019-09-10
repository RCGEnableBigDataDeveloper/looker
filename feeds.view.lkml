view: feeds {
  sql_table_name: rcg_big_data.feeds ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: dates {
    type: string
    sql: ${TABLE}.dates ;;
  }

  dimension: feed_src {
    type: string
    sql: ${TABLE}.feed_src ;;
  }

  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: texts {
    type: string
    sql: ${TABLE}.texts ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
