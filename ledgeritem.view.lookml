- view: ledgeritem
  label: 'Ledger Item'
  sql_table_name: public.ledgeritem
  fields:

  - dimension: ledgeritemid
    primary_key: true
    type: number
    sql: ${TABLE}.ledgeritemid

  - dimension_group: createdtime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdtime

  - dimension: createduser
    type: string
    sql: ${TABLE}.createduser

  - dimension: crmextid
    type: string
    sql: ${TABLE}.crmextid

  - dimension_group: lastupdatetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.lastupdatetime

  - dimension: lastupdateuser
    type: string
    sql: ${TABLE}.lastupdateuser

  - dimension: mpancore
    type: string
    sql: ${TABLE}.mpancore

  - dimension_group: postingdate
    type: time
    timeframes: [date, week, month]
    sql: cast(${TABLE}.postingdate as date)
    
  - dimension: transactionreference
    type: string
    sql: ${TABLE}.transactionreference

  - dimension: transactiontype
    type: string
    sql: ${TABLE}.transactiontype

  - measure: netamount
    label: 'Net Amount'
    type: sum
    sql: ${TABLE}.netamount
    value_format_name: gbp
    drill_fields: [crmextid, postingdate_date, netamount, cclamount, vatamount, mpancore, transactionreference]

  - measure: cclamount
    label: 'CCL Amount'
    type: sum
    sql: ${TABLE}.cclamount
    value_format_name: gbp
    drill_fields: [crmextid, postingdate_date, netamount, cclamount, vatamount, mpancore, transactionreference]
    
  - measure: vatamount
    label: 'VAT Amount'
    type: sum
    sql: ${TABLE}.vatamount
    value_format_name: gbp
    drill_fields: [crmextid, postingdate_date, netamount, cclamount, vatamount, mpancore, transactionreference]
    
  - measure: grossamount
    label: 'Gross Amount'
    type: sum
    sql: ${netamount} + ${cclamount} + ${vatamount}
    value_format_name: gbp
    drill_fields: [crmextid, postingdate_date, netamount, cclamount, vatamount, mpancore, transactionreference]

  - measure: count
    type: count
    drill_fields: [ledgeritemid]

