- view: candidateaccounthistory
  label: 'Candidate Account History'
  sql_table_name: public.candidateaccounthistory
  fields:

  - dimension: accountdebtorlimit
    type: number
    sql: ${TABLE}.accountdebtorlimit

  - dimension: address1
    type: string
    sql: ${TABLE}.address1

  - dimension: address2
    type: string
    sql: ${TABLE}.address2

  - dimension: address3
    type: string
    sql: ${TABLE}.address3

  - dimension: address4
    type: string
    sql: ${TABLE}.address4

  - dimension: address5
    type: string
    sql: ${TABLE}.address5

  - dimension: address6
    type: string
    sql: ${TABLE}.address6

  - dimension: address7
    type: string
    sql: ${TABLE}.address7

  - dimension: address8
    type: string
    sql: ${TABLE}.address8

  - dimension: address9
    type: string
    sql: ${TABLE}.address9

  - dimension: candidatestatusid
    type: number
    value_format_name: id
    sql: ${TABLE}.candidatestatusid

  - dimension: collectiontimetableid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.collectiontimetableid

  - dimension: coregno
    type: string
    sql: ${TABLE}.coregno

  - dimension: crmextid
    type: string
    sql: ${TABLE}.crmextid

  - dimension: customername
    type: string
    sql: ${TABLE}.customername

  - dimension: dunsnumber
    type: string
    sql: ${TABLE}.dunsnumber

  - dimension: postcode
    type: string
    sql: ${TABLE}.postcode

  - dimension: publicdebtor
    type: string
    sql: ${TABLE}.publicdebtor

  - measure: count
    type: count
    drill_fields: [customername, collectiontimetable.collectiontimetableid]

