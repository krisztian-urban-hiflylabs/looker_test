view: advertiser_weekly_spend {

  sql_table_name:  `google_political_ads.advertiser_weekly_spend` ;;

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

  dimension: election_cycle {
    type:  string
    sql: ${TABLE}.election_cycle ;;
  }

  dimension: week_start_date {
    type:  date
    sql: ${TABLE}.election_cycle ;;
  }

  measure: spend_usd {
    description: "spending in USD"
    type: sum
    sql: ${TABLE}.spend_usd} ;;
  }

  measure: spend_eur {
    description: "spending in EUR"
    type: sum
    sql: ${TABLE}.spend_eur} ;;
  }

  measure: spend_huf {
    description: "spending in HUF"
    type: sum
    sql: ${TABLE}.spend_huf} ;;
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

# view: advertiser_weekly_spend {
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
