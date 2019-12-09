view: channelmix_demo_oneview_media_and_conversion {
  sql_table_name: channelmix_demo.channelmix_demo_oneview_media_and_conversion ;;


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
    drill_fields: [conversion_name]
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
    drill_fields: [campaign, total_impressions]
  }

  measure: total_clicks {
    label: "Clicks"
    description: "Total Clicks"
    type: sum
    value_format_name: big_int_format
    sql: ${clicks} ;;
    drill_fields: [campaign, total_clicks]
  }

  measure: total_cost {
    label: "Cost"
    description: "Total Cost"
    type: sum
    sql: ${cost} ;;
    value_format_name: big_money_format
    drill_fields: [campaign, total_cost]
  }

  measure: cost_per_click {
    type: number
    sql: CASE WHEN ${total_clicks} != 0 THEN 1.0 * ${total_cost}/${total_clicks}
          ELSE 0
          END ;;
    value_format_name: big_money_format
    drill_fields: [campaign, cost_per_click]
  }

  measure: click_through_rate {
    type: number
    sql: CASE WHEN ${total_impressions} != 0 THEN 1.0* ${total_clicks}/${total_impressions}
          ELSE 0
          END;;
    value_format_name:percent_1
    drill_fields: [campaign, click_through_rate]
  }

  measure: cost_per_conversion {
    type: number

     sql: CASE WHEN (${total_conversions} != 0) THEN 1.0* (${total_cost}/${total_conversions})
          ELSE 0
           END;;
    value_format_name: big_money_format
    drill_fields: [campaign, cost_per_conversion]

  }

  measure: total_conversions {
    label: "Conversion"
    description: "Total Conversion"
    type: sum
    sql: ${conversions};;
    value_format_name: big_int_format
    drill_fields: [campaign, total_conversions]

  }

  measure: conversion_rate {
    type: number
    sql: ${total_conversions}/NULLIF(${total_clicks},0) ;;
    value_format_name: percent_1
    drill_fields: [campaign, total_conversions]
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
      label: "Click through Rate"
      value: "Click_through_Rate"
    }

    allowed_value: {
      label: "Cost per Click"
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
      label: "Click through Rate"
      value: "Click_through_Rate"
    }

    allowed_value: {
      label: "Cost per Click"
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

#   filter: newmetric {
#
#     type: string
#     suggestions: ["Clicks","Conversion","Cost_Per_Click"]
#   }

  measure: filtered_metric1 {
    type: number
    label_from_parameter: metric1
    sql: CASE WHEN '{% parameter metric1 %}' = 'Impression' THEN ${total_impressions}
          WHEN '{% parameter metric1 %}' = 'Cost' THEN ${total_cost}
          WHEN '{% parameter metric1 %}' = 'Clicks' THEN ${total_clicks}
          WHEN '{% parameter metric1 %}' = 'Cost_per_Click' THEN ${cost_per_click}
          WHEN '{% parameter metric1 %}' = 'Click_through_Rate' THEN ${click_through_rate}
          WHEN '{% parameter metric1 %}' = 'Conversion' THEN ${total_conversions}
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
          WHEN '{% parameter metric2 %}' = 'Conversion' THEN ${total_conversions}

          END ;;
  }




  parameter: timeframe_picker {
    label: "Date Granularity"
    type: string
    allowed_value: { value: "Date" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    default_value: "Date"
  }


  dimension: dynamic_timeframe {
    type: string
    sql:
    CASE
    WHEN {% parameter timeframe_picker %} = 'Date' THEN (TO_CHAR(DATE_TRUNC('day', channelmix_demo_oneview_media_and_conversion.report_date ), 'YYYY-MM-DD'))
    WHEN {% parameter timeframe_picker %} = 'Week' THEN ${report_week}
    WHEN {% parameter timeframe_picker %} = 'Month' THEN ${report_month}
    WHEN {% parameter timeframe_picker %} = 'Quarter' THEN ${report_quarter}

    END ;;
  }


  parameter: performance_metric_by {
    label: "Source Granularity"
    type: string
    allowed_value: { value: "Source" }
    allowed_value: { value: "Channel" }
    allowed_value: { value: "Campaign" }
    default_value: "Source"
  }


  dimension: dynamic_performance {
    type: string
    sql:
    CASE
    WHEN {% parameter performance_metric_by %} = 'Source' THEN ${data_source}
    WHEN {% parameter performance_metric_by %} = 'Channel' THEN ${channel}
    WHEN {% parameter performance_metric_by %} = 'Campaign' THEN ${campaign}
    END ;;
  }
}
