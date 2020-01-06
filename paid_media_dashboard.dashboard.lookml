- dashboard: paid_media_dashboard
  title: Paid Media Dashboard
  layout: newspaper
  elements:
  - name: <font color="#c26a45" size="6" weight="bold">Paid Media Dashboard</font>
    type: text
    title_text: <font color="#c26a45" size="6" weight="bold">Paid Media Dashboard</font>
    row: 0
    col: 6
    width: 12
    height: 3
  - title: Impressions
    name: Impressions
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: single_value
    fields: [channelmix_demo_oneview_media_and_conversion.previous_period, channelmix_demo_oneview_media_and_conversion.total_impressions]
    filters:
      channelmix_demo_oneview_media_and_conversion.previous_period: "-NULL"
    sorts: [channelmix_demo_oneview_media_and_conversion.previous_period desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "(${channelmix_demo_oneview_media_and_conversion.total_impressions}/offset(${channelmix_demo_oneview_media_and_conversion.total_impressions},1))\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.previous_period_filter
    row: 3
    col: 0
    width: 5
    height: 4
  - title: Cost
    name: Cost
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: single_value
    fields: [channelmix_demo_oneview_media_and_conversion.previous_period, channelmix_demo_oneview_media_and_conversion.total_cost]
    filters:
      channelmix_demo_oneview_media_and_conversion.previous_period: "-NULL"
    sorts: [channelmix_demo_oneview_media_and_conversion.previous_period desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "(${channelmix_demo_oneview_media_and_conversion.total_cost}/offset(${channelmix_demo_oneview_media_and_conversion.total_cost},1))\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.previous_period_filter
    row: 3
    col: 5
    width: 5
    height: 4
  - title: Clicks
    name: Clicks
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: single_value
    fields: [channelmix_demo_oneview_media_and_conversion.previous_period, channelmix_demo_oneview_media_and_conversion.total_clicks]
    filters:
      channelmix_demo_oneview_media_and_conversion.previous_period: "-NULL"
    sorts: [channelmix_demo_oneview_media_and_conversion.previous_period desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "(${channelmix_demo_oneview_media_and_conversion.total_clicks}/offset(${channelmix_demo_oneview_media_and_conversion.total_clicks},1))\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.previous_period_filter
    row: 7
    col: 0
    width: 5
    height: 4
  - title: Cost per Click
    name: Cost per Click
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: single_value
    fields: [channelmix_demo_oneview_media_and_conversion.previous_period, channelmix_demo_oneview_media_and_conversion.cost_per_click]
    filters:
      channelmix_demo_oneview_media_and_conversion.previous_period: "-NULL"
    sorts: [channelmix_demo_oneview_media_and_conversion.previous_period desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "(${channelmix_demo_oneview_media_and_conversion.cost_per_click}/offset(${channelmix_demo_oneview_media_and_conversion.cost_per_click},1))\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.previous_period_filter
    row: 7
    col: 5
    width: 5
    height: 4
  - title: Conversions
    name: Conversions
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: single_value
    fields: [channelmix_demo_oneview_media_and_conversion.previous_period, channelmix_demo_oneview_media_and_conversion.total_conversions]
    filters:
      channelmix_demo_oneview_media_and_conversion.previous_period: "-NULL"
    sorts: [channelmix_demo_oneview_media_and_conversion.previous_period desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "(${channelmix_demo_oneview_media_and_conversion.total_conversions}/offset(${channelmix_demo_oneview_media_and_conversion.total_conversions},1))\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.previous_period_filter
    row: 11
    col: 0
    width: 5
    height: 4
  - title: Cost per Conversion
    name: Cost per Conversion
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: single_value
    fields: [channelmix_demo_oneview_media_and_conversion.previous_period, channelmix_demo_oneview_media_and_conversion.cost_per_conversion]
    filters:
      channelmix_demo_oneview_media_and_conversion.previous_period: "-NULL"
    sorts: [channelmix_demo_oneview_media_and_conversion.previous_period desc]
    limit: 100
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "(${channelmix_demo_oneview_media_and_conversion.cost_per_conversion}/offset(${channelmix_demo_oneview_media_and_conversion.cost_per_conversion},1))\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.previous_period_filter
    row: 11
    col: 5
    width: 5
    height: 4
  - name: <img src "url " >
    type: text
    title_text: <img src "url " >
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Metric Comparison Trend
    name: Metric Comparison Trend
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: looker_line
    fields: [channelmix_demo_oneview_media_and_conversion.filtered_metric1, channelmix_demo_oneview_media_and_conversion.filtered_metric2,
      channelmix_demo_oneview_media_and_conversion.dynamic_timeframe]
    filters: {}
    sorts: [channelmix_demo_oneview_media_and_conversion.dynamic_timeframe]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: channelmix_demo_oneview_media_and_conversion.filtered_metric1,
            id: channelmix_demo_oneview_media_and_conversion.filtered_metric1, name: Impression}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: channelmix_demo_oneview_media_and_conversion.filtered_metric2,
            id: channelmix_demo_oneview_media_and_conversion.filtered_metric2, name: Cost}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.report_date
      Metric 1: channelmix_demo_oneview_media_and_conversion.metric1
      Metric 2: channelmix_demo_oneview_media_and_conversion.metric2
      TimeFrame Reporting: channelmix_demo_oneview_media_and_conversion.timeframe_picker
    row: 3
    col: 10
    width: 14
    height: 6
  - title: Performance Metrics Table
    name: Performance Metrics Table
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    type: looker_grid
    fields: [channelmix_demo_oneview_media_and_conversion.total_impressions, channelmix_demo_oneview_media_and_conversion.total_cost,
      channelmix_demo_oneview_media_and_conversion.total_clicks, channelmix_demo_oneview_media_and_conversion.click_through_rate,
      channelmix_demo_oneview_media_and_conversion.cost_per_click, channelmix_demo_oneview_media_and_conversion.total_conversions,
      channelmix_demo_oneview_media_and_conversion.conversion_rate, channelmix_demo_oneview_media_and_conversion.cost_per_conversion,
      channelmix_demo_oneview_media_and_conversion.dynamic_performance]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      v_oneview_media.total_impressions:
        is_active: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign: channelmix_demo_oneview_media_and_conversion.campaign
      Channelmix Profile: channelmix_demo_oneview_media_and_conversion.channelmix_profile
      Date: channelmix_demo_oneview_media_and_conversion.report_date
      Performance Metric: channelmix_demo_oneview_media_and_conversion.performance_metric_by
    row: 9
    col: 10
    width: 14
    height: 6
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    listens_to_filters: []
    field: channelmix_demo_oneview_media_and_conversion.campaign
  - name: Channelmix Profile
    title: Channelmix Profile
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    listens_to_filters: []
    field: channelmix_demo_oneview_media_and_conversion.channelmix_profile
  - name: Date
    title: Date
    type: date_filter
    default_value: 2019/12/01 to 2020/01/01
    allow_multiple_values: true
    required: false
  - name: Metric 1
    title: Metric 1
    type: field_filter
    default_value: Impression
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    listens_to_filters: []
    field: channelmix_demo_oneview_media_and_conversion.metric1
  - name: Metric 2
    title: Metric 2
    type: field_filter
    default_value: Cost
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    listens_to_filters: []
    field: channelmix_demo_oneview_media_and_conversion.metric2
  - name: TimeFrame Reporting
    title: TimeFrame Reporting
    type: field_filter
    default_value: Date
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    listens_to_filters: []
    field: channelmix_demo_oneview_media_and_conversion.timeframe_picker
  - name: Performance Metric
    title: Performance Metric
    type: field_filter
    default_value: Source
    allow_multiple_values: true
    required: false
    model: alight_model
    explore: channelmix_demo_oneview_media_and_conversion
    listens_to_filters: []
    field: channelmix_demo_oneview_media_and_conversion.performance_metric_by
