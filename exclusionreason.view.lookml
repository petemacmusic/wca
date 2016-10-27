- view: exclusionreason
  label: 'Exclusion Reason'
  sql_table_name: public.exclusionreason
  fields:

  - dimension: exclusionreasonid
    primary_key: true
    type: number
    sql: ${TABLE}.exclusionreasonid

  - dimension: appliesto
    type: string
    sql: ${TABLE}.appliesto

  - dimension: exclusionreasondescription
    type: string
    sql: ${TABLE}.exclusionreasondescription

  - measure: count
    type: count
    drill_fields: [exclusionreasonid, mvmt.count, newb.count, stki.count]

