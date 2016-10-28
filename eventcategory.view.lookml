- view: eventcategory
  sql_table_name: public.eventcategory
  fields:

  - dimension: eventcategoryid
    primary_key: true
    type: number
    sql: ${TABLE}.eventcategoryid

  - dimension: eventcategorydescription
    type: string
    sql: ${TABLE}.eventcategorydescription

  - measure: count
    type: count
    drill_fields: [eventcategoryid, eventtype.count]

