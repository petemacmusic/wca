- view: audit
  sql_table_name: public.audit
  fields:

  - dimension: auditid
    primary_key: true
    type: number
    sql: ${TABLE}.auditid

  - dimension: collectiontimetableid
    type: number
    value_format_name: id
    hidden: true
    sql: ${TABLE}.collectiontimetableid

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: createduser
    type: string
    sql: ${TABLE}.createduser

  - dimension: eventtypeid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.eventtypeid
    
  - measure: createddate_max
    label: 'Max Created Date'
    type: date
    sql: MAX(${createddate_date})

  - measure: createddate_min
    label: 'Min Created Date'
    type: date
    sql: MIN(${createddate_date})
    
  - measure: count
    type: count
    drill_fields: [auditid, eventtype.eventtypeid, collectiontimetable.collectiontimetableid]

