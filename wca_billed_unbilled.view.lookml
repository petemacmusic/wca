- view: wca_billed_unbilled
  sql_table_name: public.wca_billed_unbilled
  fields:

  - dimension: billedreceivableid
    type: string
    sql: ${TABLE}.billedreceivableid

  - dimension: excluded
    type: string
    sql: ${TABLE}.excluded

  - dimension: exclusionreasonid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.exclusionreasonid

  - dimension: invoiceendingbalance
    type: number
    sql: ${TABLE}.invoiceendingbalance

  - dimension: invoiceissuedate
    type: date_date
    sql: ${TABLE}.invoiceissuedate

  - dimension: invoicematuritydate
    type: date_date
    sql: ${TABLE}.invoicematuritydate

  - dimension: mpancore
    type: string
    sql: ${TABLE}.mpancore

  - dimension: naru_crmextid
    type: string
    sql: ${TABLE}."naru.crmextid"

  - dimension: naur_collectiontimetableid
    type: number
    value_format_name: id
    sql: ${TABLE}."naur.collectiontimetableid"

  - dimension: naur_unbilledreceivableid
    type: string
    sql: ${TABLE}."naur.unbilledreceivableid"

  - dimension: neur_collectiontimetableid
    type: number
    #value_format_name: id
    sql: ${TABLE}.neur_collectiontimetableid

  - dimension: neur_crmextid
    label: "Crm Ext Id"
    type: string
    sql: ${TABLE}."neur.crmextid"

  - dimension: neur_unbilledreceivableid
    type: string
    sql: ${TABLE}."neur.unbilledreceivableid"

  - dimension: newb_collectiontimetableid
    type: number
    value_format_name: id
    sql: ${TABLE}."newb.collectiontimetableid"

  - dimension: newb_crmextid
    type: string
    sql: ${TABLE}."newb.crmextid"

  - dimension: newb_filetypeid
    type: number
    value_format_name: id
    sql: ${TABLE}."newb.filetypeid"

  - dimension: originalinvoiceid
    type: string
    sql: ${TABLE}.originalinvoiceid

  - dimension: unbilledreceivableid
    type: string
    sql: ${TABLE}.unbilledreceivableid

  - measure: naur_unbilledamount
    label: "NAUR Amount"
    type: sum
    sql: ${TABLE}."naur.unbilledamount"
    
  - measure: neur_unbilledamount
    label: "NEUR Amount"
    type: sum
    sql: ${TABLE}."neur.unbilledamount"

  - measure: invoicenominalamount
    label: "Invoice Amount"
    type: sum
    sql: ${TABLE}.invoicenominalamount
    
  - measure: count
    type: count
    drill_fields: [neur_crmextid, neur_unbilledreceivableid, neur_unbilledamount]

