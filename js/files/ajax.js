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
    pageHtmlData.append("<img class='img-responsive' src='images/"+activepath[0].image_data.path+"'>");
    pageHtmlData.append("<h1>"+activepath[0]["title"]+"</h1>");
    pageHtmlData.append("<p>"+activepath[0]["body"]+"</p>");
    console.log("html",pageHtmlData);
    $(".everything").html(pageHtmlData);
     pageHtmlData.append("<em>Created on: "+activepath[0]["created"]+", by: "+activepath[0]["author"]+"</em>");
    $("#page").html(pageHtmlData);


  }

  function getFooter(){
    $.ajax({
      // Create som new php document that return json for the footer
      url: "php/get_content.php",
      dataType:"json",
      data: {
        footer: 1
      },
      success:function(footerData){
        console.log("footerData",footerData);
        // remove old footer
        $('footer .footerInfo').remove();
        // build html from footerData
        var html = $('<address class="footerInfo"/>');
        html.append("<p>Address:"+footerData[0]["address"]+'</p>');
        html.append("<p>Contact:"+footerData[0]["contact"]+'</p>');
        console.log("html",html);

        
        $('footer').append(html);
      }
    });

  }