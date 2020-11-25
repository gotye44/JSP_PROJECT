//function myFunction(e) {
//	dropdown = e.parentElement
//	dropdown.classList.toggle("show");
//	
//	console.log(dropdown.chileNodes)
////	console.log(dropdown.children.getElementsByClassName("dropdown-content"))
//	console.log("asdasdsa"+document.getElementsByClassName("dropdown-content"))
//	dropdowns = dropdown.getElementsByClassName("dropdown-content")
//		for (i = 0; i < dropdowns.length; i++) {
//			var openDropdown = dropdowns[i];
//			if (openDropdown.classList.contains('show')) {
//				openDropdown.classList.remove('show');
//			}
//		}
//}

// Close the dropdown menu if the user clicks outside of it
//window.onclick = function(event) {
//	if (!event.target.matches('.dropbtn')) {
//		var dropdowns = document.getElementsByClassName("dropdown-content");
//		var i;
//		for (i = 0; i < dropdowns.length; i++) {
//			var openDropdown = dropdowns[i];
//			if (openDropdown.classList.contains('show')) {
//				openDropdown.classList.remove('show');
//			}
//		}
//	}
//}

function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}