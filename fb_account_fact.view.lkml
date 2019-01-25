include: "fb_ad_metrics_base.view"
include: "fb_ad_impressions.view"
include: "fb_date_fact.view"

explore: fb_account_date_fact {
  persist_with: facebook_ads_etl_datagroup
  hidden: yes
  from: fb_account_date_fact
  view_name: fact
  label: "Account This Period"
  view_label: "Account This Period"
  join: last_fact {
    from: fb_account_date_fact
    view_label: "Account Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: account {
    from: fb_account
    view_label: "Account"
    type: left_outer
    sql_on: ${fact.account_id} = ${account.id} ;;
    relationship: many_to_one
  }
  join: total {
    from: fb_date_fact
    view_label: "Total This Period"
    sql_on: ${fact.date_period} = ${total.date_period} ;;
    relationship: many_to_one
  }
  join: last_total {
    from: fb_date_fact
    view_label: "Total Last Period"
    sql_on: ${fact.date_last_period} = ${last_total.date_period} ;;
    relationship: many_to_one
  }
}

view: fb_account_key_base {
  extends: [date_primary_key_base]
  extension: required

  dimension: account_key_base {
    hidden: yes
    sql: ${account_id} ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${account_key_base} ;;
  }
}

view: fb_account_date_fact {
  extends: [date_base, period_base, fb_ad_metrics_base, fb_account_key_base, ad_metrics_period_comparison_base, ad_metrics_weighted_period_comparison_base, pdt_base]

  derived_table: {
    datagroup_trigger: facebook_ads_etl_datagroup
    explore_source: fb_ad_impressions {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: account_name { field: fact.account_name }
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
      column: _distribution_alias {field: fact.date_raw }
      column: _sortkey_alias {field: fact.date_raw }
    }
  }
  dimension: account_id {
    hidden: yes
  }
  dimension: account_name {
#     required_fields: [account_id]
  }
  dimension: _date {
    hidden: yes
    type: date_raw
  }
}
