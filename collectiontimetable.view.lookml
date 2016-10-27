- view: collectiontimetable
  label: 'Collection Timetable'
  sql_table_name: public.collectiontimetable
  fields:

  - dimension: collectiontimetableid
    primary_key: true
    type: number
    sql: ${TABLE}.collectiontimetableid
    primary_key: true

  - dimension: advancecalculationdate
    type: string
    sql: ${TABLE}.advancecalculationdate

  - dimension: advancepaymentdate
    type: string
    sql: ${TABLE}.advancepaymentdate

  - dimension: advancereportdate
    type: string
    sql: ${TABLE}.advancereportdate

  - dimension: billcutoffdate
    type: string
    sql: ${TABLE}.billcutoffdate

  - dimension: consumptionperiodenddate
    type: string
    sql: ${TABLE}.consumptionperiodenddate

  - dimension: consumptionperiodstartdate
    type: string
    sql: ${TABLE}.consumptionperiodstartdate

  - dimension: estimatecorrectionfactor
    type: number
    sql: ${TABLE}.estimatecorrectionfactor

  - dimension: perimeterdate
    type: string
    sql: ${TABLE}.perimeterdate

  - dimension: reconciliationcalculationdate
    type: string
    sql: ${TABLE}.reconciliationcalculationdate

  - dimension: reconciliationpaymentdate
    type: string
    sql: ${TABLE}.reconciliationpaymentdate

  - dimension: reconciliationreportingdate
    type: string
    sql: ${TABLE}.reconciliationreportingdate

  - dimension: unbilledestimationinitialreviewdate
    type: string
    sql: ${TABLE}.unbilledestimationinitialreviewdate

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - collectiontimetableid
    - candidateaccounthistory.count
    - mvmt.count
    - naur.count
    - neur.count
    - newb.count
    - perimetermpans.count
    - stki.count

