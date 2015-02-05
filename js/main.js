//run when DOM ready
$(function() {

 	$("#admin_form form").submit(function(){
  		var pageTitle = $(this).find("#page_title").val();
  		var pageText = $(this).find("#page_text").val();
      var menuTitle = $(this).find("#menu_title").val();
      var menuLevel = $(this).find("#menuLevel").val();

  	  var page = {
  			":pageTitle":pageTitle,
  			":pageText":pageText,
        ":menuTitle":menuTitle,
        ":menuLevel":menuLevel
      };

  		console.log("page", page);
      //if ($('#admin_form input[type="checkbox"]').is(":checked")) {
  		sendTitleAndText(page);
      getMenuLinks();
  		//}
      this.reset();
  		return false
  	
  		
  });
  	

  	function sendTitleAndText(page){
  		$.ajax({
  			url:"php/save_content.php",
  			dataType:"json",
  			type:"post",
  			data:{
  				"page":page
  			},
  			 success: function(data) {
      		console.log("data",data);
		    },
		    error: function(data) {
		      console.log("insertNewPage error: ", data);
		    }

  		});


  	}


});
  
  function getMenuLinks(){
    $.ajax({
        url:"php/get_menu_content.php",
        dataType:"json",
        type:"post",
        data:{
          
        },
         success: function(data) {
          console.log("data",data);
        },
        error: function(data) {
          console.log("getManuLinks error: ", data);
        }

      });
    

  }