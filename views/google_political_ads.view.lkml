view: google_political_ads {
  sql_table_name:  `google_political_ads.creative_stats` ;;

  dimension: regions {
    type:  string
    description: " Region of ads"
    sql: ${TABLE}.regions ;;

  }

  dimension: ad_type {
    type:  string
    description: " Ad type"
    sql: ${TABLE}.ad_type ;;

  }

  dimension: advertiser_id {
    type:  string
    description: " Ad Type"
    sql: ${TABLE}.advertiser_id ;;

  }


  dimension: advertiser_name {
    type:  string
    description: "Advertiser Name"
    sql: ${TABLE}.advertiser_name ;;

  }

  dimension: ad_campaigns_list {
    type:  string
    description: "Ad Campaigns List"
    sql: ${TABLE}.ad_campaigns_list ;;

  }

  measure: ad_id {
    group_label: "Ad ID Counts"
    group_item_label: "Ad ID Count"
    type: count_distinct
    sql: ${TABLE}."AD_ID" ;;
  }


  measure: spend_usd {
    group_label: "Spend USD"
    group_item_label: "Spend USD"
    type: sum
    sql: ${TABLE}."SPED_USD" ;;
  }

}
