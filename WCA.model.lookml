- connection: havenredshift

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# - explore: collectiontimetable
#   label: 'File Submissions'
#   joins:
#     - join: newb
#       type: inner
#       sql_on: ${collectiontimetable.collectiontimetableid} = ${newb.collectiontimetableid}
#       relationship: one_to_many
#     - join: candidateaccounthistory
#       type: inner
#       sql_on: ${collectiontimetable.collectiontimetableid} = ${candidateaccounthistory.collectiontimetableid}
#       relationship: one_to_many
#     - join: stki
#       type: left_outer
#       sql_on: ${collectiontimetable.collectiontimetableid} = ${stki.collectiontimetableid}
#       relationship: one_to_many
#     - join: mvmt
#       type: left_outer
#       sql_on: ${collectiontimetable.collectiontimetableid} = ${mvmt.collectiontimetableid}
#       relationship: one_to_many
#     - join: neur
#       type: left_outer
#       sql_on: ${collectiontimetable.collectiontimetableid} = ${neur.collectiontimetableid}
#       relationship: one_to_many
#     - join: naur
#       type: left_outer
#       sql_on: ${collectiontimetable.collectiontimetableid} = ${naur.collectiontimetableid}
#       relationship: one_to_many
#     - join: perimetermpans
#       type: left_outer
#       sql_on: ${collectiontimetable.collectiontimetableid} = ${perimetermpans.collectiontimetableid}
#       relationship: one_to_many
      

- explore: ledgeritem
  label: "Ledger"

- explore: newb
  label: "NEWB"
  joins:
    - join: collectiontimetable
      type: inner
      sql_on: ${newb.collectiontimetableid} = ${collectiontimetable.collectiontimetableid}
      relationship: many_to_one
    - join: exclusionreason
      type: left_outer
      sql_on: ${newb.exclusionreasonid} = ${exclusionreason.exclusionreasonid}
      relationship: one_to_one
    - join: neur
      type: inner
      sql_on: ${newb.unbilledreceivableid} = ${neur.unbilledreceivableid}
      relationship: many_to_one
    - join: filetype
      type: inner
      sql_on: ${newb.filetypeid} = ${filetype.filetypeid}
      relationship: many_to_one
#     - join: naur
#       type: inner
#       sql_on: ${newb.unbilledreceivableid} = ${naur.unbilledreceivableid}
#       relationship: many_to_one

- explore: wca_billed_unbilled
  label: "NEUR"
  joins:
    - join: collectiontimetable
      type: inner
      sql_on: = ${wca_billed_unbilled.neur_collectiontimetableid} = ${collectiontimetable.collectiontimetableid}
      relationship: many_to_one

- explore: candidateaccounthistory
  label: "Candidate Account History"
  joins: 
    - join: collectiontimetable
      type: inner
      sql_on: ${candidateaccounthistory.collectiontimetableid} = ${collectiontimetable.collectiontimetableid}
      relationship: many_to_one
  
- explore: perimetermpans
  label: "Perimeter Mpans"
  joins:
    - join: collectiontimetable
      type: inner
      sql_on: ${perimetermpans.collectiontimetableid} = ${collectiontimetable.collectiontimetableid}
      relationship: many_to_one
    - join: candidateaccounthistory
      type: inner
      sql_on: ${perimetermpans.collectiontimetableid} = ${candidateaccounthistory.collectiontimetableid} AND ${perimetermpans.crmextid} = ${candidateaccounthistory.crmextid}
      relationship: many_to_one
  
- explore: stki
  label: 'STKI'
  joins:
    - join: collectiontimetable
      type: inner
      sql_on: ${stki.collectiontimetableid} = ${collectiontimetable.collectiontimetableid}
      relationship: many_to_one
    - join: eventtype
      type: inner
      sql_on: ${stki.filetypeid} = ${eventtype.filetypeid}
      relationship: many_to_one
    - join: eventcategory
      type: inner
      sql_on: ${eventtype.eventcategoryid} = ${eventcategory.eventcategoryid}
      relationship: many_to_one
    - join: audit 
      type: inner
      sql_on: ${stki.collectiontimetableid} = ${audit.collectiontimetableid} AND ${eventtype.eventtypeid} = ${audit.eventtypeid}
      relationship: many_to_one
    - join: filetype
      type: inner
      sql_on: ${stki.filetypeid} = ${filetype.filetypeid}
      relationship: many_to_one
    - join: newb
      type: inner
      sql_on: ${stki.itemidentificationnumber} = ${newb.billedreceivableid}
      relationship: many_to_one