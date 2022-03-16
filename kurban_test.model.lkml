# Define the database connection to be used for this model.
connection: "hifly-bigquery"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: kurban_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: kurban_test_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Kurban Test"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: gpa_creative_stats {


  join: gpa_advertiser_stats {
    view_label: "  Stats"
    sql_on:  ${gpa_creative_stats.advertiser_name} = ${gpa_advertiser_stats.advertiser_name}
      and ${gpa_creative_stats.advertiser_name} = ${gpa_advertiser_stats.advertiser_name};;
    type:full_outer
    relationship: many_to_many
  }

  join: advertiser_weekly_spend {
    sql_on:${advertiser_weekly_spend.advertiser_name} = ${gpa_advertiser_stats.advertiser_name}
      and ${advertiser_weekly_spend.advertiser_name} = ${gpa_advertiser_stats.advertiser_name};;
    type:full_outer
    relationship: many_to_many
  }
}
