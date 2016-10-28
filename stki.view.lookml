- view: stki
  sql_table_name: public.stki_enhanced
  label: 'STKI'
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
    drill_fields: [itemidentificationnumber, collectiontimetableid, itemnominalvalue, itemclosingbalance]

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

  - dimension: unbilledreceivableid
    type: string
    sql: ${TABLE}.unbilledreceivableid
    
  - dimension: invoicematuritydate
    type: time
    timeframes: [date, week, month]
    sql: cast(${TABLE}.invoicematuritydate as date)
    
  - dimension: paymentterms
    type: number
    sql: ${TABLE}.paymentterms

  - dimension: daysoverdue
    label: 'Days Overdue'
    type: number
    sql: datediff(day, ${invoicematuritydate_date}, getdate())

  - dimension: overdue
    type: yesno
    sql: ${daysoverdue} > 0

  - measure: avg_daysoverdue
    type: average
    sql: ${daysoverdue}

  - measure: itemclosingbalance
    label: 'Item Closing Balance'
    type: sum
    value_format_name: gbp
    sql: ${TABLE}.itemclosingbalance
    drill_fields: [collectiontimetableid, debtorinternalidentificationcode, itemidentificationnumber, invoicestatus, issuedate, itemtype, itemnominalvalue, itemclosingbalance]

  - measure: itemnominalvalue
    label: 'Nominal Value'
    type: sum
    value_format_name: gbp
    sql: ${TABLE}.itemnominalvalue
    drill_fields: [collectiontimetableid, debtorinternalidentificationcode, itemidentificationnumber, invoicestatus, issuedate, itemtype, itemnominalvalue, itemclosingbalance]
    
  - measure: count
    type: count
    drill_fields: [itemidentificationnumber, itemnominalvalue, itemclosingbalance]

