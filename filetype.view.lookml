- view: filetype
  sql_table_name: public.filetype
  fields:

  - dimension: filetypeid
    primary_key: true
    type: number
    sql: ${TABLE}.filetypeid

  - dimension: filepicturedate
    label: "File Picture Date"
    type: string
    sql: ${TABLE}.filepicturedate

  - dimension: fileproductiondate
    label: "File Production Date"
    type: string
    sql: ${TABLE}.fileproductiondate

  - dimension: filetypedescription
    label: "File Type Description"
    type: string
    sql: ${TABLE}.filetypedescription

  - dimension: filetypeshortdescription
    type: string
    sql: ${TABLE}.filetypeshortdescription

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - filetypeid
    - eventtype.count
    - mvmt.count
    - newb.count
    - newb_out.count
    - stki.count

