- view: perimetermpans
  sql_table_name: public.perimetermpans
  fields:

  - dimension: collectiontimetableid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.collectiontimetableid

  - dimension: crmextid
    label: "Crm Ext Id"
    type: string
    sql: ${TABLE}.crmextid

  - dimension: csa
    label: "CSA"
    type: string
    sql: ${TABLE}.csa

  - dimension: customername
    label: "Customer Name"
    type: string
    sql: ${TABLE}.customername

  - dimension: enddate
    type: date_date
    hidden: TRUE
    sql: cast(${TABLE}.enddate as date)
    
  - dimension: corrected_enddate
    label: "Contract End Date"
    type: date_date
    sql: dateadd(day, -1, ${enddate})

  - dimension: erscontractid
    label: "ERS Contract Id"
    type: number
    value_format_name: id
    sql: ${TABLE}.erscontractid

  - dimension: erscustomerid
    label: "ERS Customer Id"
    type: number
    value_format_name: id
    sql: ${TABLE}.erscustomerid

  - dimension: exclude
    type: string
    sql: ${TABLE}.exclude

  - dimension: mpancore
    label: "MPAN Core"
    type: string
    sql: ${TABLE}.mpancore

  - dimension: notes
    type: string
    sql: ${TABLE}.notes

  - dimension: productcode
    label: "Product Code"
    type: string
    sql: ${TABLE}.productcode

  - dimension: statdate
    label: "Start Date"
    type: date_date
    sql: cast(${TABLE}.statdate as date)

  - dimension: tandcdesc
    label: "T&C Description"
    type: string
    sql: ${TABLE}.tandcdesc

  - dimension: teamleader
    label: "Team Leader"
    type: string
    sql: ${TABLE}.teamleader

  - measure: count
    label: "MPAN Count"
    type: count
    drill_fields: [crmextid, customername, collectiontimetable.consumptionmonth, mpancore]

