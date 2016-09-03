$(document).ready ->

  # DataTable
  
  table = $('#payments-table').DataTable
    "paging": false
    "info": false

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



