view: v_facebook_ad {
  sql_table_name: india_brand.v_facebook_ad ;;

  dimension: actions_comment {
    type: number
    sql: ${TABLE}.actions_comment ;;
  }

  dimension: actions_like {
    type: number
    sql: ${TABLE}.actions_like ;;
  }

  dimension: actions_link_clicks {
    type: number
    sql: ${TABLE}.actions_link_clicks ;;
  }

  dimension: actions_post_like {
    type: number
    sql: ${TABLE}.actions_post_like ;;
  }

  dimension: actions_share {
    type: number
    sql: ${TABLE}.actions_share ;;
  }

  dimension: actions_unlike {
    type: number
    sql: ${TABLE}.actions_unlike ;;
  }

  dimension: actions_video_play {
    type: number
    sql: ${TABLE}.actions_video_play ;;
  }

  dimension: actions_video_view {
    type: number
    sql: ${TABLE}.actions_video_view ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: ad_set_name {
    type: string
    sql: ${TABLE}.ad_set_name ;;
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
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: inline_link_clicks {
    type: number
    sql: ${TABLE}.inline_link_clicks ;;
  }

  dimension: inline_post_engagement {
    type: number
    sql: ${TABLE}.inline_post_engagement ;;
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

  dimension: offsite_conversion_fb_pixel_add_to_cart {
    type: number
    sql: ${TABLE}.offsite_conversion_fb_pixel_add_to_cart ;;
  }

  dimension: offsite_conversion_fb_pixel_add_to_wishlist {
    type: number
    sql: ${TABLE}.offsite_conversion_fb_pixel_add_to_wishlist ;;
  }

  dimension: offsite_conversion_fb_pixel_complete_registration {
    type: number
    sql: ${TABLE}.offsite_conversion_fb_pixel_complete_registration ;;
  }

  dimension: offsite_conversion_fb_pixel_initiate_checkout {
    type: number
    sql: ${TABLE}.offsite_conversion_fb_pixel_initiate_checkout ;;
  }

  dimension: offsite_conversion_fb_pixel_lead {
    type: number
    sql: ${TABLE}.offsite_conversion_fb_pixel_lead ;;
  }

  dimension: offsite_conversion_fb_pixel_view_content {
    type: number
    sql: ${TABLE}.offsite_conversion_fb_pixel_view_content ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
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

  dimension: video_avg_pct_watched_actions {
    type: number
    sql: ${TABLE}.video_avg_pct_watched_actions ;;
  }

  dimension: video_p100_watched_actions {
    type: number
    sql: ${TABLE}.video_p100_watched_actions ;;
  }

  dimension: video_p25_watched_actions {
    type: number
    sql: ${TABLE}.video_p25_watched_actions ;;
  }

  dimension: video_p50_watched_actions {
    type: number
    sql: ${TABLE}.video_p50_watched_actions ;;
  }

  dimension: video_p75_watched_actions {
    type: number
    sql: ${TABLE}.video_p75_watched_actions ;;
  }

  dimension: video_p95_watched_actions {
    type: number
    sql: ${TABLE}.video_p95_watched_actions ;;
  }

  measure: count {
    type: count
    drill_fields: [ad_set_name, ad_name]
  }
}
