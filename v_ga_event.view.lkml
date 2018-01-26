view: v_ga_event {
  sql_table_name: india_brand.v_ga_event ;;

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: eventaction {
    type: string
    sql: ${TABLE}.eventaction ;;
  }

  dimension: eventcategory {
    type: string
    sql: ${TABLE}.eventcategory ;;
  }

  dimension: eventlabel {
    type: string
    sql: ${TABLE}.eventlabel ;;
  }

  dimension_group: insert {
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
    sql: ${TABLE}.insert_date ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension_group: report {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.report_date ;;
  }

  dimension: report_length_days {
    type: number
    sql: ${TABLE}.report_length_days ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: totalevents {
    type: number
    sql: ${TABLE}.totalevents ;;
  }

  dimension: uniqueevents {
    type: number
    sql: ${TABLE}.uniqueevents ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
