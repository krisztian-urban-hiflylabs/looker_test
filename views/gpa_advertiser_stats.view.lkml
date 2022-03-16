view: gpa_advertiser_stats {

  derived_table: {
    sql:
          SELECT
              advertiser_name,
              advertiser_id
              regions,
              elections,
              sum(total_creatives) as total_creatives,
              sum(spend_usd) as total_spend_usd,
              sum(spend_eur) as total_spend_eur,
              sum(spend_huf) as total_spend_huf,
          FROM `bigquery-public-data.google_political_ads.advertiser_stats`
          group by
              advertiser_name,
              advertiser_id,
              regions,
              elections
      ;;
}
   dimension: advertiser_name {
     description: "Name of the advertiser"
     type: string
     sql: ${TABLE}.advertiser_name ;;
    }

  dimension: advertiser_id {
    description: "Unique ID of advertiser"
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: regions {
    description: "Regions where the ad was active"
    type: string
    sql: ${TABLE}.regions ;;
  }

  dimension: elections {
    description: " "
    type: string
    sql: ${TABLE}.elections ;;
  }

  measure: total_creatives {
     description: "Use this for counting lifetime orders across many users"
     type: sum
     sql: ${TABLE}.total_creatives ;;
   }

  measure: total_spend_usd {
     description: "Total spending in USD"
     type: sum
     sql: ${TABLE}.total_spend_usd} ;;
  }

  measure: total_spend_eur {
    description: "Total spending in EUR"
    type: sum
    sql: ${TABLE}.total_spend_eur} ;;
  }

  measure: total_spend_huf {
    description: "Total spending in HUF"
    type: sum
    sql: ${TABLE}.total_spend_huf} ;;
  }


  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: gpa_advertiser_stats {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
