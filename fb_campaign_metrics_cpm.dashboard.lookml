- dashboard: fb_campaign_metrics_cost_per_impression
  title: Facebook Ads - Cost Per Impression
  extends: facebook_ads_base
  layout: newspaper
  elements:
  - title: Impressions To Date
    name: Impressions To Date
    model: marketing_analytics
    explore: fb_period_fact
    type: looker_column
    fields:
    - fact.date_period_dynamic_grain
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    - fact.total_impressions
    - fact.average_cost_per_impression
    sorts:
    - fact.date_period_dynamic_grain
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    series_types:
      fact.average_cost_per_click: line
      fact.average_click_rate: line
      fact.average_conversion_rate: line
      fact.average_cost_per_conversion: line
      fact.total_conversions: line
      fact.total_impressions: line
      fact.average_cost_per_impression: line
    limit_displayed_rows: false
    hidden_series:
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 75
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 63
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 94
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 82
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 113
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 101
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 132
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 120
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 151
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 139
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Cost Per Impression By State
    name: Cost Per Impression By State
    model: marketing_analytics
    explore: fb_ad_impressions_geo
    type: looker_geo_choropleth
    fields:
    - fact.state
    - fact.average_cost_per_impression
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map: usa
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    - "#e7e7e7"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E7AF75"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_cost
        name: Cost
        axisId: fact.total_cost
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 432
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 420
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 9
    width: 15
    height: 12
  - title: Cost Per Impression By Demographics
    name: Cost Per Impression By Demographics
    model: marketing_analytics
    explore: fb_ad_impressions_age_and_gender
    type: table
    fields:
    - fact.age
    - fact.gender
    - fact.average_cost_per_impression
    pivots:
    - fact.gender
    sorts:
    - fact.gender
    - fact.age 0
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 479
      bold: false
      italic: false
      strikethrough: false
      fields:
      - fact.average_cost_per_impression
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 474
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    - "#7869df"
    - "#d06180"
    - "#4bb86a"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#a4a6"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_cost
        name: Cost
        axisId: fact.total_cost
        __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
        __LINE_NUM: 543
      __FILE: 11a3be783089587ef3a8c30a8d13bf95a8f13048065b5be0f6d9567d72a74c54fbed4691/fb_campaign_metrics_cpm.dashboard.lookml
      __LINE_NUM: 531
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 22
    col: 0
    width: 9
    height: 6
  - title: Cost Per Impression By Age
    name: Cost Per Impression By Age
    model: marketing_analytics
    explore: fb_ad_impressions_age_and_gender
    type: looker_bar
    fields:
    - fact.age
    - fact.average_cost_per_impression
    sorts:
    - fact.average_cost_per_impression desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#7869df"
    - "#d06180"
    - "#4bb86a"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 0
    width: 9
    height: 6
  - title: Cost Per Impression By Gender
    name: Cost Per Impression By Gender
    model: marketing_analytics
    explore: fb_ad_impressions_age_and_gender
    type: looker_bar
    fields:
    - fact.gender
    - fact.average_cost_per_impression
    filters:
      fact.average_cost_per_impression: ">0"
    sorts:
    - fact.average_cost_per_impression desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#7869df"
    - "#d06180"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 17
    col: 0
    width: 9
    height: 5
  - title: Cost Per Impression By Device
    name: Cost Per Impression By Device
    model: marketing_analytics
    explore: fb_ad_impressions_platform_and_device
    type: looker_bar
    fields:
    - fact.device_type
    - fact.average_cost_per_impression
    filters:
      fact.average_cost_per_impression: ">0"
    sorts:
    - fact.average_cost_per_impression desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#d06180"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 23
    col: 9
    width: 7
    height: 5
  - title: Cost Per Impression By Platform
    name: Cost Per Impression By Platform
    model: marketing_analytics
    explore: fb_ad_impressions_platform_and_device
    type: looker_bar
    fields:
    - fact.publisher_platform
    - fact.average_cost_per_impression
    filters:
      fact.average_cost_per_impression: ">0"
    sorts:
    - fact.average_cost_per_impression desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#dc9d4f"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 23
    col: 16
    width: 8
    height: 5
  - title: Cost Per Impression By Day Of Week
    name: Cost Per Impression By Day Of Week
    model: marketing_analytics
    explore: fb_ad_impressions
    type: looker_bar
    fields:
    - fact.date_day_of_week
    - fact.average_cost_per_impression
    fill_fields:
    - fact.date_day_of_week
    sorts:
    - fact.date_day_of_week
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#8ac8ca"
    - "#7869df"
    - "#6e98f9"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: CPM
        axisId: fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    query_timezone: America/Los_Angeles
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 28
    col: 0
    width: 9
    height: 6
  - title: Ad Cost Per Impression Change
    name: Ad Cost Per Impression Change
    model: marketing_analytics
    explore: fb_period_fact
    type: looker_bar
    fields:
    - fact.campaign_name
    - fact.adset_name
    - fact.ad_name
    - fact.average_cost_per_impression
    - last_fact.average_cost_per_impression
    - fact.average_cost_per_impression_period_percent_change
    filters:
      fact.average_cost_per_impression_period_percent_change_abs: NOT NULL
    sorts:
    - fact.average_cost_per_impression_period_percent_change desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#ea9895"
    - "#d06180"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea989"
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: fact.average_cost_per_impression
        name: This Period
        axisId: fact.average_cost_per_impression
      - id: last_fact.average_cost_per_impression
        name: Prior Period
        axisId: last_fact.average_cost_per_impression
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - fact.campaign_name
    - fact.adset_name
    - fact.average_cost_per_impression_period_percent_change
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 28
    col: 9
    width: 15
    height: 6
