view: v_twitter_ads_campaign {
  sql_table_name: india_brand.v_twitter_ads_campaign ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_custom {
    type: number
    sql: ${TABLE}.conversion_custom ;;
  }

  dimension: conversion_downloads {
    type: number
    sql: ${TABLE}.conversion_downloads ;;
  }

  dimension: conversion_purchases {
    type: number
    sql: ${TABLE}.conversion_purchases ;;
  }

  dimension: conversion_sign_ups {
    type: number
    sql: ${TABLE}.conversion_sign_ups ;;
  }

  dimension: conversion_site_visits {
    type: number
    sql: ${TABLE}.conversion_site_visits ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: engagements {
    type: number
    sql: ${TABLE}.engagements ;;
  }

  dimension: follows {
    type: number
    sql: ${TABLE}.follows ;;
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

  dimension: likes {
    type: number
    sql: ${TABLE}.likes ;;
  }

  dimension: media_views {
    type: number
    sql: ${TABLE}.media_views ;;
  }

  dimension: replies {
    type: number
    sql: ${TABLE}.replies ;;
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

  dimension: retweets {
    type: number
    sql: ${TABLE}.retweets ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: url_clicks {
    type: number
    sql: ${TABLE}.url_clicks ;;
  }

  dimension: video_total_views {
    type: number
    sql: ${TABLE}.video_total_views ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
