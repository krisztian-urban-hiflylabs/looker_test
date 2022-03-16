# The name of this view in Looker is "Tree Census 2005"
view: tree_census_2005 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `new_york_trees.tree_census_2005`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: bbl {
    type: number
    sql: ${TABLE}.bbl ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bbl {
    type: sum
    sql: ${bbl} ;;
  }

  measure: average_bbl {
    type: average
    sql: ${bbl} ;;
  }

  dimension: bin {
    type: number
    sql: ${TABLE}.bin ;;
  }

  dimension: boro_ct {
    type: number
    description: "This is the boro_ct identifier for the census tract that the tree point falls into."
    sql: ${TABLE}.boro_ct ;;
  }

  dimension: borocode {
    type: number
    description: "Borough tree is in, using a one-digit borough code: 1 – Manhattan, 2 – Bronx, 3 – Brooklyn, 4 – Queens, 5 – Staten Island"
    sql: ${TABLE}.borocode ;;
  }

  dimension: boroname {
    type: string
    description: "Borough tree is in, full text"
    sql: ${TABLE}.boroname ;;
  }

  dimension: cb_num {
    type: number
    description: "Community Board that the tree falls in."
    sql: ${TABLE}.cb_num ;;
  }

  dimension: cen_year {
    type: number
    description: "This is the year the tree was inventoried in. Data collection for the 2005 census spanned multiple seasons. Data is in YYYY format."
    sql: ${TABLE}.cen_year ;;
  }

  dimension: census_tract {
    type: number
    sql: ${TABLE}.census_tract ;;
  }

  dimension: cncldist {
    type: number
    description: "New York City Council District tree point is in."
    sql: ${TABLE}.cncldist ;;
  }

  dimension: horz_blck {
    type: yesno
    description: "Block pavers present"
    sql: ${TABLE}.horz_blck ;;
  }

  dimension: horz_grate {
    type: yesno
    description: "Tree grates present"
    sql: ${TABLE}.horz_grate ;;
  }

  dimension: horz_other {
    type: yesno
    description: "Other horizontal treatment present"
    sql: ${TABLE}.horz_other ;;
  }

  dimension: horz_plant {
    type: yesno
    description: "Plantings present"
    sql: ${TABLE}.horz_plant ;;
  }

  dimension: inf_canopy {
    type: yesno
    description: "Canopy debris present"
    sql: ${TABLE}.inf_canopy ;;
  }

  dimension: inf_guard {
    type: yesno
    description: "Choking guard or grate present"
    sql: ${TABLE}.inf_guard ;;
  }

  dimension: inf_lights {
    type: yesno
    description: "Tree lights present"
    sql: ${TABLE}.inf_lights ;;
  }

  dimension: inf_other {
    type: yesno
    description: "Other infrastructure conflicts present"
    sql: ${TABLE}.inf_other ;;
  }

  dimension: inf_outlet {
    type: yesno
    description: "Electrical outlet present"
    sql: ${TABLE}.inf_outlet ;;
  }

  dimension: inf_paving {
    type: yesno
    description: "Close paving present"
    sql: ${TABLE}.inf_paving ;;
  }

  dimension: inf_shoes {
    type: yesno
    description: "Sneakers present"
    sql: ${TABLE}.inf_shoes ;;
  }

  dimension: inf_wires {
    type: yesno
    description: "Choking wires present"
    sql: ${TABLE}.inf_wires ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_1 {
    type: string
    sql: ${TABLE}.location_1 ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: nta {
    type: string
    description: "nta code for the neighborhood tabulation area the tree point is in, from the 2010 census"
    sql: ${TABLE}.nta ;;
  }

  dimension: nta_name {
    type: string
    description: "Nta name for the neighborhood tabulation area the tree point is in"
    sql: ${TABLE}.nta_name ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objectid ;;
  }

  dimension: objectid_1 {
    type: number
    sql: ${TABLE}.objectid_1 ;;
  }

  dimension: pit_type {
    type: string
    sql: ${TABLE}.pit_type ;;
  }

  dimension: sidw_crack {
    type: yesno
    description: "Cracked sidewalk present"
    sql: ${TABLE}.sidw_crack ;;
  }

  dimension: sidw_raise {
    type: yesno
    description: "Raised sidewalk present"
    sql: ${TABLE}.sidw_raise ;;
  }

  dimension: soil_lvl {
    type: string
    sql: ${TABLE}.soil_lvl ;;
  }

  dimension: spc_common {
    type: string
    description: "The common name of the species."
    sql: ${TABLE}.spc_common ;;
  }

  dimension: spc_latin {
    type: string
    description: "The scientific name of the species."
    sql: ${TABLE}.spc_latin ;;
  }

  dimension: st_assem {
    type: number
    description: "State Assembly District tree point is in."
    sql: ${TABLE}.st_assem ;;
  }

  dimension: st_senate {
    type: number
    description: "State Senate District tree point is in."
    sql: ${TABLE}.st_senate ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    description: "Excellent: full, well balanced crown and limb structure; leaves normal size color; no dead or broken branches; trunk solid; bark intact. Good: crown uneven or misshapen; some mechanical damage to bark or trunk; some signs of insects or disease; leaves somewhat below normal size and quantity; some dead or broken branches (less than half of the tree). Poor: large dead limbs with over one- half of the tree already dead or removed; large cavities; drastic deformities; leaves significantly below normal size and quantity; severe insect or disease damage. Dead: dead tree; leaves absent; twigs brittle. Shaft: all branches removed; trunk left standing; sprouts may or may not be evident. Stump: stump shorter than breast height; leaves entirely absent or present only on stump sprouts Empty pit: Pit contains exposed soil and no tree"
    sql: ${TABLE}.status ;;
  }

  dimension: tree_dbh {
    type: number
    description: "The diameter of the tree in whole inches, measured at breast height. (4.5 feet from the ground.)"
    sql: ${TABLE}.tree_dbh ;;
  }

  dimension: tree_loc {
    type: string
    description: "Establishes the location of the tree in relation to the address provided"
    sql: ${TABLE}.tree_loc ;;
  }

  dimension: trunk_dmg {
    type: string
    description: "Describes specific damage or wounds found on the trunk"
    sql: ${TABLE}.trunk_dmg ;;
  }

  dimension: vert_other {
    type: yesno
    description: "Other Vertical Treatment Present"
    sql: ${TABLE}.vert_other ;;
  }

  dimension: vert_pgrd {
    type: yesno
    description: "Perimeter guard present"
    sql: ${TABLE}.vert_pgrd ;;
  }

  dimension: vert_tgrd {
    type: yesno
    description: "Tall guard present"
    sql: ${TABLE}.vert_tgrd ;;
  }

  dimension: vert_wall {
    type: yesno
    description: "Walled tree well present"
    sql: ${TABLE}.vert_wall ;;
  }

  dimension: wire_2nd {
    type: yesno
    description: "Indicates the presence of secondary wires"
    sql: ${TABLE}.wire_2nd ;;
  }

  dimension: wire_htap {
    type: yesno
    description: "Indicates the presence of house tap wires"
    sql: ${TABLE}.wire_htap ;;
  }

  dimension: wire_other {
    type: yesno
    description: "Indicates the presence of other wires"
    sql: ${TABLE}.wire_other ;;
  }

  dimension: wire_prime {
    type: yesno
    description: "Indicates the presence of primary wires"
    sql: ${TABLE}.wire_prime ;;
  }

  dimension: x_sp {
    type: number
    description: "X field"
    sql: ${TABLE}.x_sp ;;
  }

  dimension: y_sp {
    type: number
    description: "y field"
    sql: ${TABLE}.y_sp ;;
  }

  dimension: zip_city {
    type: string
    description: "City, as derived from the zipcode"
    sql: ${TABLE}.zip_city ;;
  }

  dimension: zipcode {
    type: zipcode
    description: "2005 zipcode that the tree falls in."
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [boroname, nta_name]
  }
}
