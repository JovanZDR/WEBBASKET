
/**
 * Navigation & history push/pop-state
 *
 */

//function to show/hide sections
function showPage(pid) {
	getMenuLinks(pid);
	
	if( !pid||pid == 174) {
		
		$("#admin_form").hide();
		$("footer").hide();
	}


  


	else if( pid == "admin_form") {
		
		$("#admin_form").fadeIn(500);
		$("footer").hide();
	}
	else if( pid == "footer") {
		
		$("#admin_form").hide();
  	$("footer").fadeIn(500);
	}
	else if( pid == "user_side") {
		$("footer").hide();
		
		getPage(pid);
		 pid = "page";

		
	}
  
}

//go to "page" function
function goTo(href) {
  // Show a "page" in a section with the id corresponding
  // to the link's href value
  showPage(href);

  // Add the current "state/page" to our history of visited pages
  history.pushState(null,null,href);
}


//setup push/pop-state pushPopListeners for <a> tags
function pushPopListeners() {
  // When we click a link
  $(document).on("click","a",function(event){

    //if the user clicks a real http:// || https:// link,
    if ($(this).attr("href").indexOf("://") >=0) {
      //assume they are leaving the site
      return;
    }

    //prevent "empty" urls from affecting browsing
    if ($(this).attr("href") && $(this).attr("href") !== "#") {
      goTo($(this).attr("href"));
    }

    event.preventDefault();
  });


  // Add a pop state listener
  // (listen to forward/backward buttons in the browser)
  addEventListener("popstate",onPopAndStart);

  //and run once immediately (this function runs at DOM ready)
  onPopAndStart();

  // Run this function on popstate and initial load
  function onPopAndStart(){
    //alert("The popstate event is triggered!");

    // Read our url and extract the page name
    // the characters after the last slash
    var l = location.href;
    //might need to change this
    var pageName = l.substring(l.lastIndexOf("/")+1);

    // if no pageName set pageName to false
    pageName = pageName || false;
    console.log("pageName: ", pageName);
    //and showPage
    showPage(pageName);
  }
}

