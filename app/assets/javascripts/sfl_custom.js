$(document).ready(function(){$('#index-modal').foundation('reveal', 'open');});

$(document).ready(function(){$('#disclaimer-modal').foundation('reveal', 'open');});

$('a.close').on('click', function() {
  $('#disclaimer-modal').foundation('reveal', 'close');
});

jQuery(document).ready(function() {
    jQuery('.tabs .tab-links a').on('click', function(e)  {
        var currentAttrValue = jQuery(this).attr('href');
 
        // Show/Hide Tabs
        jQuery('.tabs ' + currentAttrValue).show().siblings().hide();
 
        // Change/remove current tab to active
        jQuery(this).parent('li').addClass('active').siblings().removeClass('active');
 
        e.preventDefault();
    });
    
    var URL = window.location.href;
    if(URL.includes("VBA")) {
      $('#tab1').removeClass('active');
      $('#tab2').addClass('active');
      $('#health-tab').removeClass('active');
      $('#benefits-tab').addClass('active');
    }
  
});