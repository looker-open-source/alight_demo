- dashboard: paid_search_dashboard
  title: Paid Search Dashboard
  layout: newspaper
  elements:
  - title: Total Clicks
    name: Total Clicks
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: single_value
    fields: [channelmix_demo_oneview_paid_search_ad.total_clicks, channelmix_demo_oneview_paid_search_ad.previous_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change_from_previous_period, label: Change
          from Previous Period, expression: "${channelmix_demo_oneview_paid_search_ad.total_clicks}/offset(${channelmix_demo_oneview_paid_search_ad.total_clicks},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Data Source: channelmix_demo_oneview_paid_search_ad.data_source
      Channelmix Profile: channelmix_demo_oneview_paid_search_ad.channelmix_profile
      Campaign: channelmix_demo_oneview_paid_search_ad.campaign
      Date: channelmix_demo_oneview_paid_search_ad.previous_period_filter
    row: 7
    col: 0
    width: 6
    height: 4
  - title: Cost
    name: Cost
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: single_value
    fields: [channelmix_demo_oneview_paid_search_ad.total_cost, channelmix_demo_oneview_paid_search_ad.previous_period]
    filters: {}
    sorts: [channelmix_demo_oneview_paid_search_ad.total_cost desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${channelmix_demo_oneview_paid_search_ad.total_cost}/offset(${channelmix_demo_oneview_paid_search_ad.total_cost},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    comparison_label: Change from Previous Period
    listen:
      Data Source: channelmix_demo_oneview_paid_search_ad.data_source
      Channelmix Profile: channelmix_demo_oneview_paid_search_ad.channelmix_profile
      Campaign: channelmix_demo_oneview_paid_search_ad.campaign
      Date: channelmix_demo_oneview_paid_search_ad.previous_period_filter
    row: 7
    col: 6
    width: 5
    height: 4
  - title: Conversion
    name: Conversion
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: single_value
    fields: [channelmix_demo_oneview_paid_search_ad.total_conversions, channelmix_demo_oneview_paid_search_ad.previous_period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change_over_pervious_period, label: Change
          over Pervious Period, expression: "${channelmix_demo_oneview_paid_search_ad.total_conversions}/offset(${channelmix_demo_oneview_paid_search_ad.total_conversions},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Data Source: channelmix_demo_oneview_paid_search_ad.data_source
      Channelmix Profile: channelmix_demo_oneview_paid_search_ad.channelmix_profile
      Campaign: channelmix_demo_oneview_paid_search_ad.campaign
      Date: channelmix_demo_oneview_paid_search_ad.previous_period_filter
    row: 3
    col: 6
    width: 5
    height: 4
  - title: Cost per Click
    name: Cost per Click
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: single_value
    fields: [channelmix_demo_oneview_paid_search_ad.previous_period, channelmix_demo_oneview_paid_search_ad.cost_per_click]
    sorts: [channelmix_demo_oneview_paid_search_ad.cost_per_click desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change_from_previous_period, label: Change
          from Previous Period, expression: "${channelmix_demo_oneview_paid_search_ad.cost_per_click}/offset(${channelmix_demo_oneview_paid_search_ad.cost_per_click},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    listen:
      Data Source: channelmix_demo_oneview_paid_search_ad.data_source
      Channelmix Profile: channelmix_demo_oneview_paid_search_ad.channelmix_profile
      Campaign: channelmix_demo_oneview_paid_search_ad.campaign
      Date: channelmix_demo_oneview_paid_search_ad.previous_period_filter
    row: 11
    col: 0
    width: 6
    height: 4
  - title: Total Impression
    name: Total Impression
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: single_value
    fields: [channelmix_demo_oneview_paid_search_ad.total_impressions, channelmix_demo_oneview_paid_search_ad.previous_period]
    sorts: [channelmix_demo_oneview_paid_search_ad.total_impressions desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change_over_previous_period, label: Change
          over Previous Period, expression: "${channelmix_demo_oneview_paid_search_ad.total_impressions}/offset(${channelmix_demo_oneview_paid_search_ad.total_impressions},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Campaign: channelmix_demo_oneview_paid_search_ad.campaign
      Data Source: channelmix_demo_oneview_paid_search_ad.data_source
      Channelmix Profile: channelmix_demo_oneview_paid_search_ad.channelmix_profile
      Date: channelmix_demo_oneview_paid_search_ad.previous_period_filter
    row: 3
    col: 0
    width: 6
    height: 4
  - title: Performance Metrics by Data Source
    name: Performance Metrics by Data Source
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: table
    fields: [channelmix_demo_oneview_paid_search_ad.data_source, channelmix_demo_oneview_paid_search_ad.total_impressions,
      channelmix_demo_oneview_paid_search_ad.total_clicks, channelmix_demo_oneview_paid_search_ad.cost_per_click,
      channelmix_demo_oneview_paid_search_ad.click_through_rate, channelmix_demo_oneview_paid_search_ad.total_conversions,
      channelmix_demo_oneview_paid_search_ad.total_cost, channelmix_demo_oneview_paid_search_ad.conversation_rate]
    sorts: [channelmix_demo_oneview_paid_search_ad.total_impressions desc]
    limit: 500
    total: true
    query_timezone: America/Los_Angeles
    series_types: {}
    listen:
      Campaign: channelmix_demo_oneview_paid_search_ad.campaign
      Data Source: channelmix_demo_oneview_paid_search_ad.data_source
      Channelmix Profile: channelmix_demo_oneview_paid_search_ad.channelmix_profile
      Date: channelmix_demo_oneview_paid_search_ad.report_date
    row: 11
    col: 11
    width: 13
    height: 4
  - title: Metric Comparison by Day
    name: Metric Comparison by Day
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: looker_line
    fields: [channelmix_demo_oneview_paid_search_ad.report_date, channelmix_demo_oneview_paid_search_ad.filtered_metric1,
      channelmix_demo_oneview_paid_search_ad.filtered_metric2]
    fill_fields: [channelmix_demo_oneview_paid_search_ad.report_date]
    filters: {}
    sorts: [channelmix_demo_oneview_paid_search_ad.report_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: channelmix_demo_oneview_paid_search_ad.filtered_metric1,
            id: channelmix_demo_oneview_paid_search_ad.filtered_metric1, name: Metric
              1}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: '', orientation: right, series: [{axisId: channelmix_demo_oneview_paid_search_ad.filtered_metric2,
            id: channelmix_demo_oneview_paid_search_ad.filtered_metric2, name: Metric
              2}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    listen:
      Date: channelmix_demo_oneview_paid_search_ad.report_date
      Metric 1: channelmix_demo_oneview_paid_search_ad.metric1
      Metric 2: channelmix_demo_oneview_paid_search_ad.metric2
    row: 3
    col: 11
    width: 13
    height: 8
  - title: Cost per Conversion
    name: Cost per Conversion
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    type: single_value
    fields: [channelmix_demo_oneview_paid_search_ad.cost_per_conversion, channelmix_demo_oneview_paid_search_ad.previous_period]
    limit: 500
    dynamic_fields: [{table_calculation: change_over_pervious_period, label: Change
          over Pervious Period, expression: "${channelmix_demo_oneview_paid_search_ad.cost_per_conversion}/offset(${channelmix_demo_oneview_paid_search_ad.cost_per_conversion},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    series_types: {}
    listen:
      Data Source: channelmix_demo_oneview_paid_search_ad.data_source
      Channelmix Profile: channelmix_demo_oneview_paid_search_ad.channelmix_profile
      Campaign: channelmix_demo_oneview_paid_search_ad.campaign
      Date: channelmix_demo_oneview_paid_search_ad.previous_period_filter
    row: 11
    col: 6
    width: 5
    height: 4
  - name: <font color="#c26a45" size="6" weight="bold">Paid Search Dashboard</font>
    type: text
    title_text: <font color="#c26a45" size="6" weight="bold">Paid Search Dashboard</font>
    row: 0
    col: 5
    width: 14
    height: 3
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: Campaign 4
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    listens_to_filters: []
    field: channelmix_demo_oneview_paid_search_ad.campaign
  - name: Data Source
    title: Data Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    listens_to_filters: []
    field: channelmix_demo_oneview_paid_search_ad.data_source
  - name: Channelmix Profile
    title: Channelmix Profile
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    listens_to_filters: []
    field: channelmix_demo_oneview_paid_search_ad.channelmix_profile
  - name: Date
    title: Date
    type: field_filter
    default_value: 2019/03/01 to 2019/03/31
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    listens_to_filters: []
    field: channelmix_demo_oneview_paid_search_ad.report_date
  - name: Metric 1
    title: Metric 1
    type: field_filter
    default_value: Impression
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    listens_to_filters: [Metric 2]
    field: channelmix_demo_oneview_paid_search_ad.metric1
  - name: Metric 2
    title: Metric 2
    type: field_filter
    default_value: Clicks
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_paid_search_ad
    listens_to_filters: [Metric 1]
    field: channelmix_demo_oneview_paid_search_ad.metric2
