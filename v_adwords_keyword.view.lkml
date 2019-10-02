view: v_adwords_keyword {
  sql_table_name: india_brand.v_adwords_keyword ;;

  dimension: accountdescriptivename {
    type: string
    sql: ${TABLE}.accountdescriptivename ;;
  }

  dimension: adgroup {
    type: string
    sql: ${TABLE}.adgroup ;;
  }

  dimension: adgroupstatus {
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

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: conversionvalue {
    type: number
    sql: ${TABLE}.conversionvalue ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: externalcustomerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.externalcustomerid ;;
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

  dimension: keywordmatchtype {
    type: string
    sql: ${TABLE}.keywordmatchtype ;;
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

  measure: count {
    type: count
    drill_fields: [accountdescriptivename]
  }
}
