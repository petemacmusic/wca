- view: neur
  sql_table_name: public.neur
  fields:

  - dimension: billingperiodenddate
    type: string
    sql: ${TABLE}.billingperiodenddate

  - dimension: billingperiodnumber
    type: number
    sql: ${TABLE}.billingperiodnumber

  - dimension: billingperiodstartdate
    type: string
    sql: ${TABLE}.billingperiodstartdate

  - dimension: collectiontimetableid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.collectiontimetableid

  - dimension: contractid
    type: number
    value_format_name: id
    sql: ${TABLE}.contractid

  - dimension: debtorexternalidentificationcode
    type: string
    sql: ${TABLE}.debtorexternalidentificationcode

  - dimension: debtorinternalidentificationcode
    type: string
    sql: ${TABLE}.debtorinternalidentificationcode

  - dimension: debtorsgroupidentificationcode
    type: string
    sql: ${TABLE}.debtorsgroupidentificationcode

  - dimension: monthlycutoffdate
    type: string
    sql: ${TABLE}.monthlycutoffdate

  - dimension: mpancore
    type: string
    sql: ${TABLE}.mpancore

  - measure: unbilledamount
    label: 'Unbilled Amount'
    type: sum
    sql: ${TABLE}.unbilledamount

  - dimension: unbilledperiodicity
    type: string
    sql: ${TABLE}.unbilledperiodicity

  - dimension: unbilledreceivableid
    type: string
    sql: ${TABLE}.unbilledreceivableid

  - measure: count
    type: count
    drill_fields: [collectiontimetable.collectiontimetableid]

