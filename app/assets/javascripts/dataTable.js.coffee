$(document).ready ->

  # DataTable
  table = $('#payments-students').DataTable
    "paging": false
    "info": false
    #"searching": false
    "columns": 
      "data": "student_name"
      "data": "irrevelant"

    # columns abilities
    "aoColumns":[
      {
        "bSearchable": true       #Students names
        "bSortable": true
      },{
        "bSearchable": false      #Payments
        "bSortable": false 
      }]
    "oLanguage":
      "sSearch": "Filter Students:"

