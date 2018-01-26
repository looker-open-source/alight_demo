view: v_bing_keyword {
  sql_table_name: india_brand.v_bing_keyword ;;

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: ad_distribution {
    type: string
    sql: ${TABLE}.ad_distribution ;;
  }

  dimension: ad_group {
    type: string
    sql: ${TABLE}.ad_group ;;
  }

  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.ad_group_status ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.average_position ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_id {
    type: number
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

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
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
    type: number
    sql: ${TABLE}.keyword_id ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
