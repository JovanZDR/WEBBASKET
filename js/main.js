//run when DOM ready
$(function() {

 	$("#admin_form form").submit(function(){
  		var pageTitle = $(this).find("#page_title").val();
  		var pageText = $(this).find("#page_text").val();
      var menuTitle = $(this).find("#menu_title").val();
      var menuLevel = $(this).find("#menuLevel").val();
      //var pageUrl = $(this).find("#page_url").val();

  	  var page = {
  			":pageTitle":pageTitle,
  			":pageText":pageText,
      //  ":pageUrl":pageUrl
      };

  		console.log("page", page);
      if ($('#admin_form form .addToMenu').is(":checked")) {
        page["menudata"] = {
          ":menu_title" : menuTitle,
          ":menu_level":menuLevel,
         // ":menu_path": pageUrl
        }
      }
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
          getMenuLinks();
      		console.log("data",data);
		    },
		    error: function(data) {
		      console.log("sendTitleAndText error: ", data);
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
      createFormSelect(data);
    },
    error: function(data) {
      console.log("getManuLinks error: ", data);
    }

  });
}

//the function that acutally creates the HTML for 
//the admin form select list and append it to the form
function createFormSelect(menuLinksData){
  var menuTree = buildMenuTree(menuLinksData);


}

function buildMenuTree(menuLinksData) {
  var menuTree = [];
  var hashMap= {};
  for (var i = 0; i < menuLinksData.length; i++) {
    menuLinksData[i].children = [];
    hashMap["--"+menuLinksData[i].mlid] = menuLinksData[i]; 
    //add to top level
    if(!menuLinksData[i].plid) {
      menuTree.push(menuLinksData[i]);
    }
  }
  console.log("menuTree", menuTree);
  console.log("hashMap", hashMap);
  for (var i in hashMap) {
    var singleLink = hashMap[i];
    //add to sublevel
    if(singleLink.plid) {
      hashMap["--"+ singleLink.plid].children.push(singleLink);
    }
  }


  return menuTree;
}