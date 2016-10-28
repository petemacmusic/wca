- view: eventtype
  sql_table_name: public.eventtype
  fields:

  - dimension: eventtypeid
    primary_key: true
    type: number
    sql: ${TABLE}.eventtypeid

  - dimension: eventcategoryid
    type: number
    value_format_name: id
    sql: ${TABLE}.eventcategoryid

  - dimension: eventtypedescription
    type: string
    sql: ${TABLE}.eventtypedescription

  - dimension: filetypeid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.filetypeid

  - measure: count
    type: count
    drill_fields: [eventtypeid, filetype.filetypeid, audit.count]

