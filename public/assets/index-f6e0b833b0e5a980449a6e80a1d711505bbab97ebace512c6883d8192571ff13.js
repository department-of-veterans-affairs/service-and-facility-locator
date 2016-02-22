$( document ).ready(function() {
  $('#services_selection').hide();
  
  $('#search').on("click", function(){   
        alert("search clicked");
  });
  
  $('#facilities_search').on("click", function(){    
        $('#services_selection').hide();
        $('#facilities_selection').show();
    });
    
  $('#services_search').on("click", function(){
        $('#facilities_selection').hide();
        $('#services_selection').show();
    });
  })
