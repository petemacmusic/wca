- view: stki
  sql_table_name: public.stki
  label: 'STKI'
  fields:

  - dimension: collectiontimetableid
    type: number
    value_format_name: id
    hidden: true
    sql: ${TABLE}.collectiontimetableid

  - dimension: debtorexternalidentificationcode
    type: string
    sql: ${TABLE}.debtorexternalidentificationcode

  - dimension: debtorinternalidentificationcode
    label: 'Crm Ext Id'
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
    label: 'Issue Date'
    type: time
    timeframes: [date, week, month]
    sql: cast(${TABLE}.issuedate as date)

  - dimension: itemidentificationnumber
    type: string
    sql: ${TABLE}.itemidentificationnumber

  - dimension: itemtype
    label: 'Item Type'
    type: string
    sql: ${TABLE}.itemtype

  - dimension: monthlycutoffdate
    label: 'Monthly Cutoff Date'
    type: time
    timeframes: [date, week, month]
    sql: cast(${TABLE}.monthlycutoffdate as date)

  - dimension: originalinvoiceid
    type: string
    sql: ${TABLE}.originalinvoiceid

  - measure: itemclosingbalance
    label: 'Item Closing Balance'
    type: sum
    value_format_name: gbp
    sql: ${TABLE}.itemclosingbalance

  - measure: itemnominalvalue
    label: 'Nominal Value'
    type: sum
    value_format_name: gbp
    sql: ${TABLE}.itemnominalvalue
    
  - measure: count
    type: count
    drill_fields: [collectiontimetable.collectiontimetableid]

