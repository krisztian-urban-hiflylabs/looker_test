# The name of this view in Looker is "Tree Species"
view: tree_species {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `new_york_trees.tree_species`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Comments" in Explore.

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: environmental_tolerances {
    type: string
    sql: ${TABLE}.environmental_tolerances ;;
  }

  dimension: fall_color {
    type: string
    sql: ${TABLE}.fall_color ;;
  }

  dimension: form {
    type: string
    sql: ${TABLE}.form ;;
  }

  dimension: growth_rate {
    type: string
    sql: ${TABLE}.growth_rate ;;
  }

  dimension: location_tolerances {
    type: string
    sql: ${TABLE}.location_tolerances ;;
  }

  dimension: notes_suggested_cultivars {
    type: string
    sql: ${TABLE}.notes_suggested_cultivars ;;
  }

  dimension: species_common_name {
    type: string
    sql: ${TABLE}.species_common_name ;;
  }

  dimension: species_scientific_name {
    type: string
    sql: ${TABLE}.species_scientific_name ;;
  }

  dimension: tree_size {
    type: string
    sql: ${TABLE}.tree_size ;;
  }

  measure: count {
    type: count
    drill_fields: [species_common_name, species_scientific_name]
  }
}
