view: channelmix_demo_oneview_paid_search_ad {
  sql_table_name: @{SCHEMA_NAME}.channelmix_demo_oneview_paid_search_ad ;;

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }

  dimension: ad_group {
    type: string
    sql: ${TABLE}.ad_group ;;
  }

  dimension: ad_id {
    type: number
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: description_line_one {
    type: string
    sql: ${TABLE}.description_line_one ;;
  }

  dimension: description_line_two {
    type: string
    sql: ${TABLE}.description_line_two ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: headline_one {
    type: string
    sql: ${TABLE}.headline_one ;;
  }

  dimension: headline_two {
    type: string
    sql: ${TABLE}.headline_two ;;
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
    description: "The reporting period as selected by the Previous Period Filter"
    sql:
      CASE
        WHEN {% date_start previous_period_filter %} is not null AND {% date_end previous_period_filter %} is not null /* date ranges or in the past x days */
          THEN
            CASE
              WHEN ${report_date} >=  {% date_start previous_period_filter %}
                AND ${report_date} <= {% date_end previous_period_filter %}
                THEN 'This Period'
              WHEN ${report_date} >= DATEADD(day,-1*DATEDIFF(day,{% date_start previous_period_filter %}, {% date_end previous_period_filter %} ) + 1, DATEADD(day,-1,{% date_start previous_period_filter %} ) )
                AND ${report_date} <= DATEADD(day,-1,{% date_start previous_period_filter %} )
                THEN 'Previous Period'
            END
          END ;;
  }


  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_impressions {
    type: sum
    value_format: "0.0,\" K\""
    sql: ${impressions} ;;
  }

  measure: total_clicks {
    type: sum
    value_format: "0.0,\" K\""
    sql: ${clicks} ;;
  }

  measure: total_cost {
    label: "Cost"
    type: sum
    sql: ${cost} ;;
    value_format_name: usd
  }

  measure: total_conversions {
    label: "Conversion"
    type: sum
    sql: ${conversions};;
  }

  measure: cost_per_click {
    type: number
    sql: CASE WHEN ${total_clicks} != 0 THEN 1.0 * ${total_cost}/${total_clicks}
          ELSE 0
          END ;;
    value_format_name: usd
  }

  measure: click_through_rate {
    type: number
    sql: CASE WHEN ${total_impressions} != 0 THEN 1.0* ${total_clicks}/${total_impressions}
          ELSE 0
          END;;
    value_format_name: percent_2
  }

  measure: cost_per_conversion{
    type: number
    sql: CASE WHEN ${total_conversions} != 0 THEN 1.0 * ${total_cost}/${total_conversions}
        ELSE 0
        END;;

      value_format_name: usd
    }
    measure: conversation_rate{
      type: percent_of_total
      sql: ${total_conversions} ;;
    }

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
        label: "Conversion Rate"
        value: "Conversion Rate"
      }

      allowed_value: {
        label: "Cost per Conversion"
        value: "Cost per Conversion"
      }

      allowed_value: {
        label: "Click through Rate"
        value: "Click through Rate"
      }

      allowed_value: {
        label: "Cost per Click"
        value: "Cost per Click"
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
        label: "Conversion Rate"
        value: "Conversion Rate"
      }

      allowed_value: {
        label: "Cost per Conversion"
        value: "Cost per Conversion"
      }

      allowed_value: {
        label: "Click through Rate"
        value: "Click through Rate"
      }

      allowed_value: {
        label: "Cost per Click"
        value: "Cost per Click"
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

    measure: filtered_metric1 {
      type: number
      label_from_parameter: metric1
      sql: CASE WHEN '{% parameter metric1 %}' = 'Impression' THEN ${total_impressions}
          WHEN '{% parameter metric1 %}' = 'Cost' THEN ${total_cost}
          WHEN '{% parameter metric1 %}' = 'Clicks' THEN ${total_clicks}
          WHEN '{% parameter metric1 %}' = 'Conversion' THEN ${total_conversions}
          WHEN '{% parameter metric1 %}' = 'Cost per Click' THEN ${cost_per_click}
          WHEN '{% parameter metric1 %}' = 'Click through Rate' THEN ${click_through_rate}
          WHEN '{% parameter metric1 %}' = 'Cost per Conversion' THEN ${cost_per_conversion}
          WHEN '{% parameter metric1 %}' = 'Conversion Rate' THEN ${conversation_rate}
          END ;;
    }

    measure: filtered_metric2 {
      type: number
      label_from_parameter: metric2
      sql: CASE WHEN '{% parameter metric2 %}' = 'Impression' THEN ${total_impressions}
          WHEN '{% parameter metric2 %}' = 'Cost' THEN ${total_cost}
          WHEN '{% parameter metric2 %}' = 'Clicks' THEN ${total_clicks}
          WHEN '{% parameter metric2 %}' = 'Conversion' THEN ${total_conversions}
          WHEN '{% parameter metric2 %}' = 'Cost per Click' THEN ${cost_per_click}
          WHEN '{% parameter metric2 %}' = 'Click through Rate' THEN ${click_through_rate}
          WHEN '{% parameter metric2 %}' = 'Cost per Conversion' THEN ${cost_per_conversion}
          WHEN '{% parameter metric2 %}' = 'Conversion Rate' THEN ${conversation_rate}
          END ;;
    }
  }
