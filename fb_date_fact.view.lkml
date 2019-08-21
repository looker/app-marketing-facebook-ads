view: fb_date_fact {
  extends: [ad_metrics_dimension_base, fb_ad_metrics_base]

  derived_table: {
    explore_source: fb_ad_impressions {
      column: date_period { field: fact.date_period }
      column: account_id { field: fact.account_id }
      column: account_name { field: fact.account_name }
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
      bind_filters: {
        from_field: fact.period
        to_field: fact.period
      }
    }
  }

  dimension: date_period {
    allow_fill: no
    hidden: yes
    primary_key: yes
    type: date
    convert_tz: no
  }
}
