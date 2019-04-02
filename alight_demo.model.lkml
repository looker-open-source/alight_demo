connection: "channelmix"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: alight_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alight_demo_default_datagroup

explore: adwords_ad_group {}

explore: v_adwords_ad_group_conversion {}

explore: v_adwords_keyword {}

explore: v_adwords_keyword_conversion {}

explore: v_bing_ad_group {}

explore: v_bing_keyword {}

explore: v_bing_keyword_conversion {}

explore: v_doubleclick_standard {}

explore: v_facebook_ad {}

explore: v_facebook_page {}

explore: v_ga_event {}

explore: v_ga_geography {}

explore: v_ga_page {}

explore: v_ga_session {}

explore: v_ga_technology {}

explore: v_media {}

explore: v_media_conversions {}

explore: v_offline_media {}

explore: v_twitter_ads_campaign {}
