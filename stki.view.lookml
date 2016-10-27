- view: stki
  sql_table_name: public.stki
  fields:

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

  - dimension: debtorstatus
    type: string
    sql: ${TABLE}.debtorstatus

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

  - dimension: invoicestatus
    type: string
    sql: ${TABLE}.invoicestatus

  - dimension: invoicetoberepurchased
    type: string
    sql: ${TABLE}.invoicetoberepurchased

  - dimension: issuedate
    type: string
    sql: ${TABLE}.issuedate

  - dimension: itemclosingbalance
    type: number
    sql: ${TABLE}.itemclosingbalance

  - dimension: itemidentificationnumber
    type: string
    sql: ${TABLE}.itemidentificationnumber

  - dimension: itemnominalvalue
    type: number
    sql: ${TABLE}.itemnominalvalue

  - dimension: itemtype
    type: string
    sql: ${TABLE}.itemtype

  - dimension: monthlycutoffdate
    type: string
    sql: ${TABLE}.monthlycutoffdate

  - dimension: originalinvoiceid
    type: string
    sql: ${TABLE}.originalinvoiceid

  - measure: count
    type: count
    drill_fields: [collectiontimetable.collectiontimetableid]

