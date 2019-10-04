#Paid Media Dashboard
view: v_oneview_media {
  sql_table_name: channelmix_demo.v_oneview_media ;;
  label: "Paid Media"

  dimension: primary_key {
    hidden: yes
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

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.data_source ;;
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
      minute,
      millisecond,
      second,
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
      second,
      minute,
      hour,
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

  filter: previous_period_filter {
    type: date
    description: "Use this filter for period analysis"
    sql: ${previous_period} IS NOT NULL ;;
  }

  dimension: previous_period {
    type: string
    sql: CASE WHEN  ${report_date} >= {% date_start previous_period_filter %} AND ${report_date} < {% date_end previous_period_filter %}
            THEN 'This Period'
          WHEN ${report_date} >= DATEADD(day,-1*DATEDIFF(day,{% date_start previous_period_filter %}, {% date_end previous_period_filter %} ) + 1, DATEADD(day,-1,{% date_start previous_period_filter %} ) )
          AND ${report_date} <= DATEADD(day,-1,{% date_start previous_period_filter %} )
            THEN 'Previous Period'
        END;;
  }


  measure: count {
    type: count
    drill_fields: []
  }

  ####################
  # CUSTOM MEASURES #
  ####################

  measure: total_impressions {
    label: "Impressions"
    description: "Total Impressions"
    type: sum
    value_format_name: big_int_format
    sql: ${impressions} ;;
  }

  measure: total_clicks {
    label: "Clicks"
    description: "Total Clicks"
    type: sum
    value_format_name: big_int_format
    sql: ${clicks} ;;
  }

  measure: total_cost {
    label: "Cost"
    description: "Total Cost"
    type: sum
    sql: ${cost} ;;
    value_format_name: big_money_format
  }

  measure: cost_per_click {
    type: number
    sql: CASE WHEN ${total_clicks} != 0 THEN 1.0 * ${total_cost}/${total_clicks}
          ELSE 0
          END ;;
    value_format_name: big_money_format
  }

  measure: click_through_rate {
    type: number
    sql: CASE WHEN ${total_impressions} != 0 THEN 1.0* ${total_clicks}/${total_impressions}
          ELSE 0
          END;;
#     value_format_name:percent_1
  }

  measure: cost_per_conversion {
    type: number
    sql: CASE WHEN ${v_oneview_media_conversion.total_conversions} != 0 THEN 1.0* ${total_cost}/${v_oneview_media_conversion.total_conversions}
          ELSE 0
          END;;
    value_format_name: big_money_format
  }


  #####################
  # DYNAMIC FILTERING #
  #####################

  parameter: metric1 {
    label: "Metric 1"
    type: unquoted
    allowed_value: {
      label:"Impression"
      value: "Impression"
    }

    allowed_value: {
      label: "Cost"
      value: "Cost"
    }

    allowed_value: {
      label: "Conversion_Rate"
      value: "Conversion_Rate"
    }

    allowed_value: {
      label: "Cost_per_Conversion"
      value: "Cost_per_Conversion"
    }

    allowed_value: {
      label: "Click_through_Rate"
      value: "Click_through_Rate"
    }

    allowed_value: {
      label: "Cost_per_Click"
      value: "Cost_per_Click"
    }

    allowed_value: {
      label: "Conversion"
      value: "Conversion"
    }

    allowed_value: {
      label: "Clicks"
      value: "Clicks"
    }
  }


  parameter: metric2 {
    label: "Metric 2"
    type: unquoted
    allowed_value: {
      label:"Impression"
      value: "Impression"
    }

    allowed_value: {
      label: "Cost"
      value: "Cost"
    }

    allowed_value: {
      label: "Conversion_Rate"
      value: "Conversion_Rate"
    }

    allowed_value: {
      label: "Cost_per_Conversion"
      value: "Cost_per_Conversion"
    }

    allowed_value: {
      label: "Click_through_Rate"
      value: "Click_through_Rate"
    }

    allowed_value: {
      label: "Cost_per_Click"
      value: "Cost_per_Click"
    }

    allowed_value: {
      label: "Conversion"
      value: "Conversion"
    }

    allowed_value: {
      label: "Clicks"
      value: "Clicks"
    }
  }

  filter: newmetric {

    type: string
    suggestions: ["Clicks","Conversion","Cost_Per_Click"]
  }

  measure: filtered_metric1 {
    type: number
    label_from_parameter: metric1
    sql: CASE WHEN '{% parameter metric1 %}' = 'Impression' THEN ${total_impressions}
          WHEN '{% parameter metric1 %}' = 'Cost' THEN ${total_cost}
          WHEN '{% parameter metric1 %}' = 'Clicks' THEN ${total_clicks}
          WHEN '{% parameter metric1 %}' = 'Cost_per_Click' THEN ${cost_per_click}
          WHEN '{% parameter metric1 %}' = 'Click_through_Rate' THEN ${click_through_rate}
          WHEN '{% parameter metric1 %}' = 'Conversion' THEN ${v_oneview_media_conversion.total_conversions}
          END ;;
  }

  measure: filtered_metric2 {
    type: number
    label_from_parameter: metric2
    sql: CASE WHEN '{% parameter metric2 %}' = 'Impression' THEN ${total_impressions}
          WHEN '{% parameter metric2 %}' = 'Cost' THEN ${total_cost}
          WHEN '{% parameter metric2 %}' = 'Clicks' THEN ${total_clicks}
          WHEN '{% parameter metric2 %}' = 'Cost_per_Click' THEN ${cost_per_click}
          WHEN '{% parameter metric2 %}' = 'Click_through_Rate' THEN ${click_through_rate}
          WHEN '{% parameter metric1 %}' = 'Conversion' THEN ${v_oneview_media_conversion.total_conversions}

          END ;;
  }
}
