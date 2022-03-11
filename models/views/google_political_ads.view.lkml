view: google_political_ads {
  sql_table_name:  `google_political_ads.creative_stats` ;;

  dimension: regions {
    type:  string
    description: " Region of ads"
    sql: ${TABLE}.regions ;;

  }
}
