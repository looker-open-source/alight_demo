view: v_bing_keyword_conversion {
  sql_table_name: india_brand.v_bing_keyword_conversion ;;

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: account_status {
    type: string
    sql: ${TABLE}.account_status ;;
  }

  dimension: ad_group {
    type: string
    sql: ${TABLE}.ad_group ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.ad_group_status ;;
  }

  dimension: assists {
    type: number
    sql: ${TABLE}.assists ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_status {
    type: string
    sql: ${TABLE}.campaign_status ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: extended_cost {
    type: number
    sql: ${TABLE}.extended_cost ;;
  }

  dimension: goal {
    type: string
    sql: ${TABLE}.goal ;;
  }

  dimension: goal_id {
    type: string
    sql: ${TABLE}.goal_id ;;
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

  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keyword_id ;;
  }

  dimension: keyword_status {
    type: string
    sql: ${TABLE}.keyword_status ;;
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

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
