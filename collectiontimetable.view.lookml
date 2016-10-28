- view: collectiontimetable
  label: 'Collection Timetable'
  sql_table_name: public.collectiontimetable
  fields:

  - dimension: collectiontimetableid
    primary_key: true
    type: number
    sql: ${TABLE}.collectiontimetableid
    primary_key: true

  - dimension: consumptionperiodstartdate
    label: 'Consumption Period Start Date'
    type: date_date
    sql: cast(${TABLE}.consumptionperiodstartdate as date)

  - dimension: consumptionperiodenddate
    label: 'Consumption Period End Date'
    type: date_date
    sql: cast(${TABLE}.consumptionperiodenddate as date)

  - dimension: perimeterdate
    label: 'Peimeter date'
    type: date_date
    sql: cast(${TABLE}.perimeterdate as date)

  - dimension: unbilledestimationinitialreviewdate
    label: 'Unbilled Estimation Initial Review Date'
    type: date_date
    sql: cast(${TABLE}.unbilledestimationinitialreviewdate as date)

  - dimension: advancereportdate
    label: 'Advance Report Date'
    type: date_date
    sql: cast(${TABLE}.advancereportdate as date)
    
  - dimension: advancecalculationdate
    label: 'Advance Calculation Date'
    type: date_date
    sql: cast(${TABLE}.advancecalculationdate as date)

  - dimension: advancepaymentdate
    label: 'Advance Payment Date'
    type: date_date
    sql: cast(${TABLE}.advancepaymentdate as date)

  - dimension: billcutoffdate
    label: 'Bill Cutoff Date'
    type: date_date
    sql: cast(${TABLE}.billcutoffdate as date)

  - dimension: reconciliationreportingdate
    label: 'Reconciliation Reporting Date'
    type: date_date
    sql: cast(${TABLE}.reconciliationreportingdate as date)

  - dimension: reconciliationcalculationdate
    label: 'Reconciliation Calculation Date'
    type: date_date
    sql: cast(${TABLE}.reconciliationcalculationdate as date)

  - dimension: reconciliationpaymentdate
    label: 'Reconciliation Payment Date'
    type: date_date
    sql: cast(${TABLE}.reconciliationpaymentdate as date)

  - dimension: estimatecorrectionfactor
    label: 'Estimate Correction Factor'
    type: number
    sql: ${TABLE}.estimatecorrectionfactor

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

