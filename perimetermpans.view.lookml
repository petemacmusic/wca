- view: perimetermpans
  sql_table_name: public.perimetermpans
  fields:

  - dimension: collectiontimetableid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.collectiontimetableid

  - dimension: crmextid
    type: string
    sql: ${TABLE}.crmextid

  - dimension: csa
    type: string
    sql: ${TABLE}.csa

  - dimension: customername
    type: string
    sql: ${TABLE}.customername

  - dimension: enddate
    type: string
    sql: ${TABLE}.enddate

  - dimension: erscontractid
    type: number
    value_format_name: id
    sql: ${TABLE}.erscontractid

  - dimension: erscustomerid
    type: number
    value_format_name: id
    sql: ${TABLE}.erscustomerid

  - dimension: exclude
    type: string
    sql: ${TABLE}.exclude

  - dimension: mpancore
    type: string
    sql: ${TABLE}.mpancore

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension: productcode
    type: string
    sql: ${TABLE}.productcode

  - dimension: statdate
    type: string
    sql: ${TABLE}.statdate

  - dimension: tandcdesc
    type: string
    sql: ${TABLE}.tandcdesc

  - dimension: teamleader
    type: string
    sql: ${TABLE}.teamleader

  - measure: count
    type: count
    drill_fields: [customername, collectiontimetable.collectiontimetableid]

