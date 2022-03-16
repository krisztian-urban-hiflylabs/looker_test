# The name of this view in Looker is "Tree Census 1995"
view: tree_census_1995 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `new_york_trees.tree_census_1995`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    description: "Address of the tree."
    sql: ${TABLE}.address ;;
  }

  dimension: borough {
    type: string
    description: "Borough where tree was recorded."
    sql: ${TABLE}.borough ;;
  }

  dimension: cb_new {
    type: number
    description: "Community Board geocoded to the address using Geosupport 11.4"
    sql: ${TABLE}.cb_new ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cb_new {
    type: sum
    sql: ${cb_new} ;;
  }

  measure: average_cb_new {
    type: average
    sql: ${cb_new} ;;
  }

  dimension: cb_original {
    type: number
    description: "The community board originally geocoded to the address using LION 02A"
    sql: ${TABLE}.cb_original ;;
  }

  dimension: censusblock_2010 {
    type: string
    description: "2010 Census Block geocoded to the address using Geosupport 11.4"
    sql: ${TABLE}.censusblock_2010 ;;
  }

  dimension: censustract_2010 {
    type: string
    description: "2010 Census Tract geocoded to the address using Geosupport 11.4"
    sql: ${TABLE}.censustract_2010 ;;
  }

  dimension: diameter {
    type: number
    description: "Diameter of the tree as measured at approximately 4.5 feet from the ground."
    sql: ${TABLE}.diameter ;;
  }

  dimension: house_number {
    type: string
    description: "Numerical portion of the address."
    sql: ${TABLE}.house_number ;;
  }

  dimension: latitude {
    type: number
    description: "Latitude of point in decimal degrees as geocoded using LION 02A"
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    type: number
    description: "Longitude of point in decimal degrees as geocoded using LION 02A"
    sql: ${TABLE}.longitude ;;
  }

  dimension: nta_2010 {
    type: string
    description: "Neighborhood Tabulation Area geocoded to the address using Geosupport 11.4"
    sql: ${TABLE}.nta_2010 ;;
  }

  dimension: recordid {
    type: number
    description: "A unique identifier for each record in the table. Does not correspond to other datasets or identify the tree itself."
    value_format_name: id
    sql: ${TABLE}.recordid ;;
  }

  dimension: segmentid {
    type: number
    description: "LION SegmentID geocoded to the address using Geosupport 11.4"
    value_format_name: id
    sql: ${TABLE}.segmentid ;;
  }

  dimension: sidewalk_condition {
    type: string
    description: "Whether the tree roots have lifted the adjacent sidewalk."
    sql: ${TABLE}.sidewalk_condition ;;
  }

  dimension: site {
    type: string
    description: "This field clarifies the position relative to the address for trees not located in the front of buildings."
    sql: ${TABLE}.site ;;
  }

  dimension: spc_common {
    type: string
    description: "This is the common name for the species of this tree."
    sql: ${TABLE}.spc_common ;;
  }

  dimension: spc_latin {
    type: string
    description: "This is the latin/scientific name for the species of this tree."
    sql: ${TABLE}.spc_latin ;;
  }

  dimension: species {
    type: string
    description: "Species of the tree using a four-letter code, comprised of the first two letters of the genus followed by the first two letters of the species."
    sql: ${TABLE}.species ;;
  }

  dimension: status {
    type: string
    description: "Overall tree condition."
    sql: ${TABLE}.status ;;
  }

  dimension: street {
    type: string
    description: "Street where address for tree is located."
    sql: ${TABLE}.street ;;
  }

  dimension: support_structure {
    type: string
    description: "Whether the tree has support structures installed."
    sql: ${TABLE}.support_structure ;;
  }

  dimension: wires {
    type: string
    description: "Whether the tree is located under utility wires"
    sql: ${TABLE}.wires ;;
  }

  dimension: x {
    type: number
    description: "X coordinate of point in the NAD_1983_StatePlane_New_York_Long_Island_FIPS_3104_Feet coordinate system, geocoded using LION 02A"
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    description: "Y coordinate of point in the NAD_1983_StatePlane_New_York_Long_Island_FIPS_3104_Feet coordinate system, geocoded using LION 02A"
    sql: ${TABLE}.y ;;
  }

  dimension: zip_new {
    type: number
    description: "Zip Code geocoded to the address using Geosupport 11.4"
    sql: ${TABLE}.zip_new ;;
  }

  dimension: zip_original {
    type: number
    description: "The zip code originally geocoded to the address using LION 02A"
    sql: ${TABLE}.zip_original ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
