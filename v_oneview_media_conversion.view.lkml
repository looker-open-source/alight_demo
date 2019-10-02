#Paid Media Dashboard
view: v_oneview_media_conversion {
  sql_table_name: channelmix_demo.v_oneview_media_conversion ;;
  label: "Paid Media Conversion"
  dimension: primary_key {
#     hidden: yes
    primary_key: yes
    sql:${account} || ${campaign} || ${ad_group} || ${data_source} || ${channel} || ${platform} || ${channelmix_profile} || ${report_raw};;
  }

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: ad_group {
    type: string
    sql: ${TABLE}.ad_group ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: conversion_name {
    type: string
    sql: ${TABLE}.conversion_name ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
  }

  dimension_group: insert {
    type: time
    timeframes: [
      raw,
      minute,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.insert_date ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
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
    drill_fields: [conversion_name]
  }

  measure: total_conversions {
    label: "Conversion"
    description: "Total Conversion"
    type: sum
    sql: ${conversions};;
    value_format_name: big_int_format

  }

  measure: conversion_rate {
    type: number
    sql: ${total_conversions}/NULLIF(${v_oneview_media.total_clicks},0) ;;
    value_format_name: percent_1
  }


}
