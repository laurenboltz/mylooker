- dashboard: dashhhhhboardheyahhh
  title: DashhhhhboardHeyahhh
  layout: newspaper
  elements:
  - name: Ordered Items and Corresponding Order Status
    title: Ordered Items and Corresponding Order Status
    model: model1
    explore: order_items
    type: looker_column
    fields:
    - order_items.order_status
    - order_items.count
    sorts:
    - order_items.count desc
    limit: 5
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    colors:
    - 'palette: Green to Red'
    series_colors: {}
    listen:
      Date: inventory_items.created_date
    row: 0
    col: 15
    width: 9
    height: 6
  - title: Total Revenue by Gender
    name: Total Revenue by Gender
    model: model1
    explore: order_items
    type: looker_bar
    fields:
    - order_items.total_revenue
    - users.gender
    sorts:
    - order_items.total_revenue desc
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_dropoff: false
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    series_types: {}
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    row: 0
    col: 8
    width: 7
    height: 6
  - title: Top Ten Average Orders by State
    name: Top Ten Average Orders by State
    model: model1
    explore: order_items
    type: looker_scatter
    fields:
    - order_items.avg_order
    - users.state
    sorts:
    - order_items.avg_order desc
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_dropoff: false
    colors:
    - 'palette: Random'
    series_colors: {}
    series_types: {}
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Top Ten Brands Total Sales
    name: Top Ten Brands Total Sales
    model: model1
    explore: order_items
    type: looker_area
    fields:
    - products.brand
    - order_items.total_revenue
    sorts:
    - order_items.total_revenue desc
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    show_dropoff: false
    colors:
    - 'palette: Looker Classic'
    series_colors: {}
    series_types: {}
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    row: 6
    col: 8
    width: 8
    height: 6
  - title: User Demographics - Age
    name: User Demographics - Age
    model: model1
    explore: order_items
    type: looker_pie
    fields:
    - users.count
    - users.age_tier
    fill_fields:
    - users.age_tier
    sorts:
    - users.age_tier
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - 'palette: Looker Classic'
    series_colors: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Products Sold by Day of Week
    name: Products Sold by Day of Week
    model: model1
    explore: order_items
    type: looker_donut_multiples
    fields:
    - inventory_items.sold_day_of_week
    - products.category
    - orders.count
    pivots:
    - products.category
    fill_fields:
    - inventory_items.sold_day_of_week
    sorts:
    - products.category 0
    limit: 500
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 11
    value_labels: legend
    label_type: labPer
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    charts_across: 7111
    colors:
    - 'palette: Looker Classic'
    series_colors: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Users Over 21 Order Activity
    name: Users Over 21 Order Activity
    model: model1
    explore: order_items
    type: looker_funnel
    fields:
    - users.users_over_21
    - orders.created_month
    sorts:
    - orders.created_month desc
    limit: 10
    query_timezone: America/Los_Angeles
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors:
    - red
    - blue
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Top 10 Most Frequent Customer First Order Date and Most Recent Order Date
    name: Top 10 Most Frequent Customer First Order Date and Most Recent Order Date
    model: model1
    explore: order_items
    type: looker_timeline
    fields:
    - orders.user_first_order_date
    - orders.user_last_order_date
    - orders.count
    - users.id
    sorts:
    - orders.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    barColors:
    - 'palette: Santa Cruz'
    groupBars: true
    labelSize: 10pt
    showLegend: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 12
    col: 8
    width: 16
    height: 6
  - title: TEST TEST
    name: TEST TEST
    model: model1
    explore: order_items
    type: looker_line
    fields:
    - order_items.order_status
    - order_items.count
    - calculation_2
    sorts:
    - order_items.count desc
    limit: 5
    column_limit: 50
    dynamic_fields:
    - table_calculation: my_calculation
      label: My calculation
      expression: "${order_items.count}*21"
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - measure: calculation_2
      based_on: orders.user_id
      type: count_distinct
      label: Calculation 2
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
      filter_expression: "${users.age} > 50"
    query_timezone: America/Los_Angeles
    stacking: ''
    colors:
    - 'palette: Green to Red'
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      order_items.count: "#7f8bcd"
      calculation_2: "#d07ecd"
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    listen: {}
    row: 18
    col: 0
    width: 8
    height: 6
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
