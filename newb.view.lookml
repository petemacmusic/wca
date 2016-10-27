- view: newb
  label: 'NEWB'
  sql_table_name: public.newb
  fields:

  - dimension: billedreceivableid
    type: string
    sql: ${TABLE}.billedreceivableid

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

  - dimension_group: invoiceissuedate
    type: time
    timeframes: [date, week, month]
    sql: cast(${TABLE}.invoiceissuedate as date)

  - dimension_group: invoicematuritydate
    type: time
    timeframes: [date, week, month]
    sql: cast(${TABLE}.invoicematuritydate as date)

  - dimension_group: monthlycutoffdate
    type: time
    timeframes: [date, week, month]
    sql: cast(${TABLE}.monthlycutoffdate as date)

  - dimension: originalinvoiceid
    type: string
    sql: ${TABLE}.originalinvoiceid

  - dimension: unbilledreceivableid
    type: string
    sql: ${TABLE}.unbilledreceivableid
    
  - dimension: payment_terms
    type: number
    sql: DATEDIFF(day, ${invoiceissuedate_date}, ${invoicematuritydate_date})

  - measure: count
    type: count
    drill_fields: [collectiontimetableid, originalinvoiceid]
    
  - measure: invoicenominalamount
    type: sum
    sql: ${TABLE}.invoicenominalamount

  - measure: invoiceendingbalance
    type: sum
    sql: ${TABLE}.invoiceendingbalance


