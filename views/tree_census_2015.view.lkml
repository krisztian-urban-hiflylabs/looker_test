# The name of this view in Looker is "Tree Census 2015"
view: tree_census_2015 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `new_york_trees.tree_census_2015`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    description: "Nearest estimated address to tree"
    sql: ${TABLE}.address ;;
  }

  dimension: block_id {
    type: number
    description: "Identifier linking each tree to the block in the blockface table/shapefile that it is mapped on."
    sql: ${TABLE}.block_id ;;
  }

  dimension: boro_ct {
    type: number
    description: "This is the boro_ct identifyer for the census tract that the tree point falls into."
    sql: ${TABLE}.boro_ct ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_boro_ct {
    type: sum
    sql: ${boro_ct} ;;
  }

  measure: average_boro_ct {
    type: average
    sql: ${boro_ct} ;;
  }

  dimension: borocode {
    type: number
    description: "Code for borough in which tree point is located"
    sql: ${TABLE}.borocode ;;
  }

  dimension: boroname {
    type: string
    description: "Name of borough in which tree point is located"
    sql: ${TABLE}.boroname ;;
  }

  dimension: brch_light {
    type: string
    description: "Indicates the presence of a branch problem caused by lights (usually string lights) or wires in the branches"
    sql: ${TABLE}.brch_light ;;
  }

  dimension: brch_other {
    type: string
    description: "Indicates the presence of other branch problems"
    sql: ${TABLE}.brch_other ;;
  }

  dimension: brch_shoe {
    type: string
    description: "Indicates the presence of a branch problem caused by sneakers in the branches"
    sql: ${TABLE}.brch_shoe ;;
  }

  dimension: cb_num {
    type: number
    description: "Community board in which tree point is located"
    sql: ${TABLE}.cb_num ;;
  }

  dimension: cncldist {
    type: number
    description: "Council district in which tree point is located"
    sql: ${TABLE}.cncldist ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    description: "The date tree points were collected in the census software"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: curb_loc {
    type: string
    description: "Location of tree bed in relationship to the curb; trees are either along the curb (OnCurb) or offset from the curb (OffsetFromCurb)"
    sql: ${TABLE}.curb_loc ;;
  }

  dimension: guards {
    type: string
    description: "Indicates whether a guard is present, and if the user felt it was a helpful or harmful guard. Not recorded for dead trees and stumps"
    sql: ${TABLE}.guards ;;
  }

  dimension: health {
    type: string
    description: "Indicates the user's perception of tree health."
    sql: ${TABLE}.health ;;
  }

  dimension: latitude {
    type: number
    description: "Latitude of point, in decimal degrees"
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    description: "Longitude of point, in decimal degrees"
    sql: ${TABLE}.longitude ;;
  }

  dimension: nta {
    type: string
    description: "This is the NTA Code corresponding to the neighborhood tabulation area from the 2010 US Census that the tree point falls into."
    sql: ${TABLE}.nta ;;
  }

  dimension: nta_name {
    type: string
    description: "This is the NTA name corresponding to the neighborhood tabulation area from the 2010 US Census that the tree point falls into."
    sql: ${TABLE}.nta_name ;;
  }

  dimension: problems {
    type: string
    sql: ${TABLE}.problems ;;
  }

  dimension: root_grate {
    type: string
    description: "Indicates the presence of a root problem caused by metal grates in tree bed"
    sql: ${TABLE}.root_grate ;;
  }

  dimension: root_other {
    type: string
    description: "Indicates the presence of other root problems"
    sql: ${TABLE}.root_other ;;
  }

  dimension: root_stone {
    type: string
    description: "Indicates the presence of a root problem caused by paving stones in tree bed"
    sql: ${TABLE}.root_stone ;;
  }

  dimension: sidewalk {
    type: string
    description: "Indicates whether one of the sidewalk flags immediately adjacent to the tree was damaged, cracked, or lifted. Not recorded for dead trees and stumps."
    sql: ${TABLE}.sidewalk ;;
  }

  dimension: spc_common {
    type: string
    description: "Common name for species, e.g. \"red maple\""
    sql: ${TABLE}.spc_common ;;
  }

  dimension: spc_latin {
    type: string
    description: "Scientific name for species, e.g. \"Acer rubrum\""
    sql: ${TABLE}.spc_latin ;;
  }

  dimension: st_assem {
    type: number
    description: "State Assembly District in which tree point is located"
    sql: ${TABLE}.st_assem ;;
  }

  dimension: st_senate {
    type: number
    description: "State Senate District in which tree point is located"
    sql: ${TABLE}.st_senate ;;
  }

  dimension: state {
    type: string
    description: "All features given value 'New York'"
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    description: "Indicates whether the tree is alive, standing dead, or a stump."
    sql: ${TABLE}.status ;;
  }

  dimension: steward {
    type: string
    description: "Indicates the number of unique signs of stewardship observed for this tree. Not recorded for stumps or dead trees."
    sql: ${TABLE}.steward ;;
  }

  dimension: stump_diam {
    type: number
    description: "Diameter of stump measured through the center, rounded to the nearest inch."
    sql: ${TABLE}.stump_diam ;;
  }

  dimension: tree_dbh {
    type: number
    description: "Diameter of the tree, measured at approximately 54\" / 137cm above the ground."
    sql: ${TABLE}.tree_dbh ;;
  }

  dimension: tree_id {
    type: number
    description: "Unique identification number for each tree point"
    sql: ${TABLE}.tree_id ;;
  }

  dimension: trnk_light {
    type: string
    description: "Indicates the presence of a trunk problem caused by lighting installed on the tree"
    sql: ${TABLE}.trnk_light ;;
  }

  dimension: trnk_other {
    type: string
    description: "Indicates the presence of other trunk problems"
    sql: ${TABLE}.trnk_other ;;
  }

  dimension: trunk_wire {
    type: string
    description: "Indicates the presence of a trunk problem caused by wires or rope wrapped around the trunk"
    sql: ${TABLE}.trunk_wire ;;
  }

  dimension: user_type {
    type: string
    description: "This field describes the category of user who collected this tree point's data."
    sql: ${TABLE}.user_type ;;
  }

  dimension: x_sp {
    type: number
    description: "X coordinate, in state plane. Units are feet."
    sql: ${TABLE}.x_sp ;;
  }

  dimension: y_sp {
    type: number
    description: "Y coordinate, in state plane. Units are feet"
    sql: ${TABLE}.y_sp ;;
  }

  dimension: zip_city {
    type: string
    description: "City as derived from zipcode. This is often (but not always) the same as borough."
    sql: ${TABLE}.zip_city ;;
  }

  dimension: zipcode {
    type: zipcode
    description: "Five-digit zipcode in which tree is located"
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [boroname, nta_name]
  }
}
