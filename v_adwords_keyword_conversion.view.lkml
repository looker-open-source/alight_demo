view: v_adwords_keyword_conversion {
  sql_table_name: india_brand.v_adwords_keyword_conversion ;;

  dimension: accountdescriptivename {
    type: string
    sql: ${TABLE}.accountdescriptivename ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: adgroupid {
    type: number
    value_format_name: id
    sql: ${TABLE}.adgroupid ;;
  }

  dimension: adgroupstatus {
    type: string
    sql: ${TABLE}.adgroupstatus ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaignid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaignid ;;
  }

  dimension: campaignstatus {
    type: string
    sql: ${TABLE}.campaignstatus ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: conversion_category {
    type: string
    sql: ${TABLE}.conversion_category ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: conversions_type {
    type: string
    sql: ${TABLE}.conversions_type ;;
  }

  dimension: conversionvalue {
    type: number
    sql: ${TABLE}.conversionvalue ;;
  }

  dimension: externalcustomerid {
    type: string
    sql: ${TABLE}.externalcustomerid ;;
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

  dimension: viewthroughconversions {
    type: number
    sql: ${TABLE}.viewthroughconversions ;;
  }

  measure: count {
    type: count
    drill_fields: [accountdescriptivename]
  }
}
