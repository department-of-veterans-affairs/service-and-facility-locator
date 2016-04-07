$(document).ready(function(){$('#index-modal').foundation('reveal', 'open');});

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
    if(URL.indexOf("VBA") >= 0) {
      $('#tab1').removeClass('active');
      $('#tab2').addClass('active');
      $('#health-tab').removeClass('active');
      $('#benefits-tab').addClass('active');
    }
  
});
