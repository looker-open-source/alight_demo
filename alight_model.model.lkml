connection: "channelmix_demo"

include: "*.view.lkml"                       # include all views in this project
include: "*.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

week_start_day: sunday

named_value_format: big_int_format {
  value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.000"
  strict_value_format: yes
}

named_value_format: big_money_format {
  value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
  strict_value_format: yes
}

explore: channelmix_demo_oneview_media_and_conversion {}
