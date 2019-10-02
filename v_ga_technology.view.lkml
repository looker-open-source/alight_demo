view: v_ga_technology {
  sql_table_name: india_brand.v_ga_technology ;;

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
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

  dimension: operatingsystem {
    type: string
    sql: ${TABLE}.operatingsystem ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
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

  dimension: sessionduration {
    type: number
    sql: ${TABLE}.sessionduration ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
