- dashboard: business_stats123
  title: Business Stats
  layout: newspaper
  elements:
  - name: Average Sale Price
    title: Average Sale Price
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    row: 0
    col: 6
    width: 6
    height: 4
  - name: Average Spend Per User
    title: Average Spend Per User
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_spend_per_user]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 18
    width: 6
    height: 4
  - name: Brand Sales
    title: Brand Sales
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [products.brand, order_items.order_count, products.count, order_items.average_spend_per_user]
    filters:
      order_items.delivered_date: 90 days
    sorts: [order_items.average_spend_per_user]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    row: 27
    col: 12
    width: 12
    height: 8
  - name: Highest Spending User
    title: Highest Spending User
    model: thelook
    explore: order_items
    type: looker_map
    fields: [users.approx_location, users.country, order_items.average_spend_per_user,
      users.gender]
    pivots: [users.gender]
    sorts: [users.gender 0, order_items.average_spend_per_user desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    map_latitude: 50.680797145321655
    map_longitude: -96.15234375
    map_zoom: 3
    row: 4
    col: 12
    width: 12
    height: 9
  - name: Orders by Day and Category
    title: Orders by Day and Category
    model: thelook
    explore: order_items
    type: looker_area
    fields: [products.category, order_items.created_date, order_items.count]
    pivots: [products.category]
    fill_fields: [order_items.created_date]
    filters:
      order_items.created_date: 30 days
      products.category: Blazers & Jackets,Sweaters,pants,Shorts,Fashion Hoodies &
        Sweatshirts,Accessories
    sorts: [order_items.created_date desc, products.category]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 42
    col: 0
    width: 24
    height: 8
  - name: Orders in the Past 90 Days
    title: Orders in the Past 90 Days
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    filters:
      order_items.delivered_date: 90 days
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 12
    width: 6
    height: 4
  - name: Percent Cohort Still Active by Traffic Source
    title: Percent Cohort Still Active by Traffic Source
    model: thelook
    explore: order_items
    type: looker_line
    fields: [users.traffic_source, users.created_month_num, users.count]
    pivots: [users.traffic_source]
    fill_fields: [users.created_month_num]
    sorts: [users.traffic_source, users.created_month_num]
    limit: 500
    dynamic_fields: [{table_calculation: pct_cohort_still_active, label: Pct Cohort
          Still Active, expression: '100.0*${users.count}/max(${users.count})', value_format: "#.#\\\
          %", value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    x_axis_label: Months Since Signup
    defaults_version: 1
    hidden_fields: [users.count]
    row: 20
    col: 12
    width: 12
    height: 7
  - name: Total Sales, Year over Year
    title: Total Sales, Year over Year
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.total_sale_price, order_items.created_month_num, order_items.created_year]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_month_num, order_items.created_year]
    sorts: [order_items.total_sale_price desc 0, order_items.created_year]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: Month of Year
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    row: 4
    col: 0
    width: 12
    height: 9
  - name: Total Spend by Cohort
    title: Total Spend by Cohort
    model: thelook
    explore: order_items
    type: looker_line
    fields: [users.created_month_num, order_items.total_sale_price, users.created_year]
    pivots: [users.created_year]
    fill_fields: [users.created_year, users.created_month_num]
    sorts: [users.created_year 0, users.created_month_num]
    limit: 500
    dynamic_fields: [{table_calculation: running_total_sales, label: Running Total
          Sales, expression: "if(\n  is_null(${order_items.total_sale_price})\n  ,null\n\
          \  ,running_total(${order_items.total_sale_price})\n)", value_format: "$#,###",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_label: Month Since Signup
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [order_items.total_sale_price]
    row: 13
    col: 12
    width: 12
    height: 7
  - name: User Basic Demographic Profile
    title: User Basic Demographic Profile
    model: thelook
    explore: order_items
    type: looker_donut_multiples
    fields: [users.count, users.traffic_source, users.gender]
    pivots: [users.traffic_source]
    sorts: [users.count desc 0, users.traffic_source]
    limit: 500
    query_timezone: America/Los_Angeles
    show_value_labels: true
    font_size: 15
    series_colors:
      Display - users.count: "#FBB555"
      Organic - users.count: "#75E2E2"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    row: 20
    col: 0
    width: 12
    height: 7
  - name: User Count
    title: User Count
    model: thelook
    explore: order_items
    type: single_value
    fields: [users.count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 6
    height: 4
  - name: Website Visit Volume Vs Conversion Rate
    title: Website Visit Volume Vs Conversion Rate
    model: thelook
    explore: events
    type: looker_column
    fields: [events.event_day_of_week, events.sessions_count, events.unique_visitors,
      sessions.overall_conversion]
    fill_fields: [events.event_day_of_week]
    sorts: [events.event_day_of_week]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: events.sessions_count,
            id: events.sessions_count, name: Sessions Count}, {axisId: events.unique_visitors,
            id: events.unique_visitors, name: Unique Visitors}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: sessions.overall_conversion,
            id: sessions.overall_conversion, name: Overall Conversion}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      events.sessions_count: line
      events.unique_visitors: line
    series_colors:
      sessions.overall_conversion: "#82bdd1"
      events.sessions_count: "#FFD95F"
    series_labels:
      events.sessions_count: Total Visitors
    defaults_version: 1
    row: 27
    col: 0
    width: 12
    height: 8
  - name: User Behaviour By User Source
    title: User Behaviour By User Source
    model: thelook
    explore: order_items
    type: looker_column
    fields: [users.traffic_source, order_items.average_sale_price, user_order_facts.average_lifetime_orders]
    sorts: [users.traffic_source]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: order_items.average_sale_price,
            id: order_items.average_sale_price, name: Average Sale Price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: user_order_facts.average_lifetime_orders,
            id: user_order_facts.average_lifetime_orders, name: Average Lifetime Orders}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    font_size: '15'
    series_types: {}
    series_colors:
      Display - users.count: "#FBB555"
      Organic - users.count: "#75E2E2"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    row: 13
    col: 0
    width: 12
    height: 7
  - name: Year Wise Sales Performance
    title: Year Wise Sales Performance
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.created_year, order_items.created_month_num, order_items.total_sale_price]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_year, order_items.created_month_num]
    sorts: [order_items.created_year desc 0, order_items.created_month_num]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    row: 35
    col: 0
    width: 24
    height: 7
