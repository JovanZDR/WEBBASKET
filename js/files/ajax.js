 function getPage(pid){
    $.ajax({
      url:"php/get_content.php",
        dataType:"json",
        data:{
          "pid":pid
        },
        success: function(data) {
          success:showPageContent(data);
       
          console.log("getPage",data);
        },
        
       
          
        
        error: function(data) {
          console.log("createPage error: ", data);
        }
    });
  }

  function showPageContent (data){
    //console.log("pagesData", data);
    $(".everything").html("here should be the page");


  }