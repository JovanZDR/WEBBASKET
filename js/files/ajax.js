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

  function showPageContent (activepath){
    console.log( activepath);
    
    $("#page").html("");
    var pageHtmlData = $('<article class="content"/>');
    pageHtmlData.append("<h1>"+activepath[0]["title"]+"</h1>");
    pageHtmlData.append("<h4>"+activepath[0]["body"]+"</h4>");
    console.log("html",pageHtmlData);
    $(".everything").html(pageHtmlData);
     pageHtmlData.append("<em>Created on: "+activepath[0]["created"]+", by: "+activepath[0]["author"]+"</em>");

    $("#page").html(pageHtmlData);
  }