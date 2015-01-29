//run when DOM ready
$(function() {


	

 	$("#admin_form form").submit(function(){
  		var pageTitle = $(this).find("#page_title").val();
  		var pageText = $(this).find("#page_text").val();

  		var page = {
  			":pageTitle":pageTitle,
  			":pageText":pageText
  		};

  		console.log("page", page);
      //if ($('#admin_form input[type="checkbox"]').is(":checked")) {
  		sendTitleAndText(page);
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
