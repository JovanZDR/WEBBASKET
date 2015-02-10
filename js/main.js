//run when DOM ready
$(function() {
  getMenuLinks();
 
    
     
  
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
        console.log("plid",$(this).find(".menuOption :selected").data("menuItemName"));
        var selectedLink = $(this).find(".menuOption :selected").data("menuItemName");
        page["menudata"] = {
          ":plid": selectedLink.mlid,
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
       
          console.log("data",data);
  		  },
    		error: function(data) {
    		  console.log("sendTitleAndText error: ", data);
    		}

  	});


  }



  
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
  
 
        
    
          
  
    
  function createFormSelect(menuLinksData){
    var menuTree = buildMenuTree(menuLinksData);

    var select_menu_html = $('<select class="form-control"/>');
    var menuOption = $( '<option value="">Top</option>');
    
    menuOption.data("menuItemName",{mlid:"null"});
    select_menu_html.append(menuOption);
    select_menu_html = createSelectOption(select_menu_html,menuTree,0);
    $("#admin_form .menuOption").html(select_menu_html);

 
  }
  function createSelectOption(select_menu_html,menuTreeItems,level){
    for (var j=0; j<menuTreeItems.length; j++){
      var levelIndicator = "-";
    
      for(var i=0;i<level;i++){
        levelIndicator +="-";
      }

   
      var option=$('<option value="'+menuTreeItems[j].mlid+'">'+levelIndicator+" "+menuTreeItems[j].title+'</option>')
      option.data("menuItemName",menuTreeItems[j]);
      select_menu_html.append(option);
  
      if (menuTreeItems[j].children.length>0){
       createSelectOption(select_menu_html, menuTreeItems[j].children, level+1);
        console.log("select_menu_html",select_menu_html);
      }
    }

  return select_menu_html;
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
});