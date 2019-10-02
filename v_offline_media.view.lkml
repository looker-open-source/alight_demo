view: v_offline_media {
  sql_table_name: india_brand.v_offline_media ;;

  dimension: added_value {
    type: number
    sql: ${TABLE}.added_value ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: channelmix_profile {
    type: string
    sql: ${TABLE}.channelmix_profile ;;
  }

  dimension: clicks {
    type: string
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: demographics {
    type: string
    sql: ${TABLE}.demographics ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
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

  dimension: mediasourceid {
    type: string
    sql: ${TABLE}.mediasourceid ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: planned_cost {
    type: number
    sql: ${TABLE}.planned_cost ;;
  }

  dimension: planned_spots {
    type: number
    sql: ${TABLE}.planned_spots ;;
  }

  dimension: planned_trps {
    type: number
    sql: ${TABLE}.planned_trps ;;
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

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: spots {
    type: number
    sql: ${TABLE}.spots ;;
  }

  dimension: trp {
    type: number
    sql: ${TABLE}.trp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
