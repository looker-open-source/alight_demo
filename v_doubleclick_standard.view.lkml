view: v_doubleclick_standard {
  sql_table_name: india_brand.v_doubleclick_standard ;;

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_one_click_through_conversions {
    type: number
    sql: ${TABLE}.conversion_one_click_through_conversions ;;
  }

  dimension: conversion_one_view_through_conversions {
    type: number
    sql: ${TABLE}.conversion_one_view_through_conversions ;;
  }

  dimension: conversion_three_click_through_conversions {
    type: number
    sql: ${TABLE}.conversion_three_click_through_conversions ;;
  }

  dimension: conversion_three_view_through_conversions {
    type: number
    sql: ${TABLE}.conversion_three_view_through_conversions ;;
  }

  dimension: conversion_two_click_through_conversions {
    type: number
    sql: ${TABLE}.conversion_two_click_through_conversions ;;
  }

  dimension: conversion_two_view_through_conversions {
    type: number
    sql: ${TABLE}.conversion_two_view_through_conversions ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
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

  dimension: media_cost {
    type: number
    sql: ${TABLE}.media_cost ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: planned_media_cost {
    type: number
    sql: ${TABLE}.planned_media_cost ;;
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

  dimension: site_dcm {
    type: string
    sql: ${TABLE}.site_dcm ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
