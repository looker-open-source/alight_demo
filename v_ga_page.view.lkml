view: v_ga_page {
  sql_table_name: india_brand.v_ga_page ;;

  dimension: adcontent {
    type: string
    sql: ${TABLE}.adcontent ;;
  }

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

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

  dimension: entrances {
    type: number
    sql: ${TABLE}.entrances ;;
  }

  dimension: exits {
    type: number
    sql: ${TABLE}.exits ;;
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

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: pagepath {
    type: string
    sql: ${TABLE}.pagepath ;;
  }

  dimension: pagepath_base {
    type: string
    sql: ${TABLE}.pagepath_base ;;
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

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: uniquepageviews {
    type: number
    sql: ${TABLE}.uniquepageviews ;;
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
