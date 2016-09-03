$(document).ready ->

  # DataTable
  table = $('#payments-table').DataTable
    "paging": false
    "info": false
    "columns": 
      "data": "student_name"
      "data": "irrevelant"

    # columns abilities
    "aoColumns":[
      {
        "bSearchable": true       # Students names
        "bSortable": true
      },{
        "bSearchable": false      # Payments
        "bSortable": false 
      }]
    "oLanguage":
      "sSearch": "Filter Students:"


