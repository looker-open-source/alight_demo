view: adwords_ad_group {
  sql_table_name: india_brand.v_adwords_ad_group ;;

  dimension: account_descriptive_name {
    type: string
    sql: ${TABLE}.accountdescriptivename ;;
  }

  dimension: ad_group {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.adgroupstatus ;;
  }

  dimension: adnetworktype2 {
    type: string
    sql: ${TABLE}.adnetworktype2 ;;
  }

  dimension: averageposition {
    type: number
    sql: ${TABLE}.averageposition ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaignstatus {
    type: string
    sql: ${TABLE}.campaignstatus ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  measure: clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: conversions {
    type: sum
    sql: ${TABLE}.conversions ;;
  }

  dimension: conversionvalue {
    type: number
    sql: ${TABLE}.conversionvalue ;;
  }

  measure: cost {
    type: sum
    sql: ${TABLE}.cost ;;
    value_format_name: usd
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: external_customer_id {
    type: number
    value_format_name: id
    sql: ${TABLE}.externalcustomerid ;;
  }

  measure: impressions {
    type: sum
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

  dimension: slot {
    type: string
    sql: ${TABLE}.slot ;;
  }

  dimension: viewthroughconversions {
    type: number
    sql: ${TABLE}.viewthroughconversions ;;
  }

  measure: count_devices {
    type: count_distinct
    sql: ${device} ;;
  }

  measure: cost_per_click {
    type: number
    sql: ${cost}::float/NULLIF(${clicks},0) ;;
    value_format_name: usd
  }
}
