view: v_ga_geography {
  sql_table_name: india_brand.v_ga_geography ;;

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: goal10completions {
    type: number
    sql: ${TABLE}.goal10completions ;;
  }

  dimension: goal11completions {
    type: number
    sql: ${TABLE}.goal11completions ;;
  }

  dimension: goal12completions {
    type: number
    sql: ${TABLE}.goal12completions ;;
  }

  dimension: goal13completions {
    type: number
    sql: ${TABLE}.goal13completions ;;
  }

  dimension: goal14completions {
    type: number
    sql: ${TABLE}.goal14completions ;;
  }

  dimension: goal15completions {
    type: number
    sql: ${TABLE}.goal15completions ;;
  }

  dimension: goal16completions {
    type: number
    sql: ${TABLE}.goal16completions ;;
  }

  dimension: goal17completions {
    type: number
    sql: ${TABLE}.goal17completions ;;
  }

  dimension: goal18completions {
    type: number
    sql: ${TABLE}.goal18completions ;;
  }

  dimension: goal19completions {
    type: number
    sql: ${TABLE}.goal19completions ;;
  }

  dimension: goal1completions {
    type: number
    sql: ${TABLE}.goal1completions ;;
  }

  dimension: goal20completions {
    type: number
    sql: ${TABLE}.goal20completions ;;
  }

  dimension: goal2completions {
    type: number
    sql: ${TABLE}.goal2completions ;;
  }

  dimension: goal3completions {
    type: number
    sql: ${TABLE}.goal3completions ;;
  }

  dimension: goal4completions {
    type: number
    sql: ${TABLE}.goal4completions ;;
  }

  dimension: goal5completions {
    type: number
    sql: ${TABLE}.goal5completions ;;
  }

  dimension: goal6completions {
    type: number
    sql: ${TABLE}.goal6completions ;;
  }

  dimension: goal7completions {
    type: number
    sql: ${TABLE}.goal7completions ;;
  }

  dimension: goal8completions {
    type: number
    sql: ${TABLE}.goal8completions ;;
  }

  dimension: goal9completions {
    type: number
    sql: ${TABLE}.goal9completions ;;
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

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.metro ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
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

  dimension: report_length_days {
    type: number
    sql: ${TABLE}.report_length_days ;;
  }

  dimension: sessionduration {
    type: number
    sql: ${TABLE}.sessionduration ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.users ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
