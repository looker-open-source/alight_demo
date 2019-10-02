view: v_facebook_page {
  sql_table_name: india_brand.v_facebook_page ;;

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: engaged_users {
    type: number
    sql: ${TABLE}.engaged_users ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: organic_impressions {
    type: number
    sql: ${TABLE}.organic_impressions ;;
  }

  dimension: page_fans {
    type: number
    sql: ${TABLE}.page_fans ;;
  }

  dimension: page_stories {
    type: number
    sql: ${TABLE}.page_stories ;;
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

  dimension: unique_impressions {
    type: number
    sql: ${TABLE}.unique_impressions ;;
  }

  dimension: unique_page_fan_adds {
    type: number
    sql: ${TABLE}.unique_page_fan_adds ;;
  }

  dimension: unique_page_fan_removes {
    type: number
    sql: ${TABLE}.unique_page_fan_removes ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
