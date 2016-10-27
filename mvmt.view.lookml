- view: mvmt
  sql_table_name: public.mvmt
  fields:

  - dimension: mvmtid
    primary_key: true
    type: number
    sql: ${TABLE}.mvmtid

  - dimension: affecteddateoftheitemtoaninvoice
    type: string
    sql: ${TABLE}.affecteddateoftheitemtoaninvoice

  - dimension: collectiontimetableid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.collectiontimetableid

  - dimension: debtorexternalidentificationcode
    type: string
    sql: ${TABLE}.debtorexternalidentificationcode

  - dimension: debtorinternalidentificationcode
    type: string
    sql: ${TABLE}.debtorinternalidentificationcode

  - dimension: debtorsgroupidentificationcode
    type: string
    sql: ${TABLE}.debtorsgroupidentificationcode

  - dimension: excluded
    type: string
    sql: ${TABLE}.excluded

  - dimension: exclusionreasonid
    type: number
    value_format_name: id
    sql: ${TABLE}.exclusionreasonid

  - dimension: filetypeid
    type: number
    value_format_name: id
    sql: ${TABLE}.filetypeid

  - dimension: itemidentificationnumber
    type: string
    sql: ${TABLE}.itemidentificationnumber

  - dimension: itemissuedate
    type: string
    sql: ${TABLE}.itemissuedate

  - dimension: itemtype
    type: string
    sql: ${TABLE}.itemtype

  - dimension: itemvalueaffected
    type: number
    sql: ${TABLE}.itemvalueaffected

  - dimension: itemvaluegrossamount
    type: number
    sql: ${TABLE}.itemvaluegrossamount

  - dimension: monthlycutoffdate
    type: string
    sql: ${TABLE}.monthlycutoffdate

  - dimension: originalinvoiceid
    type: string
    sql: ${TABLE}.originalinvoiceid

  - measure: count
    type: count
    drill_fields: [mvmtid, collectiontimetable.collectiontimetableid]

