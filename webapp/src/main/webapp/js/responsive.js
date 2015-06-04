function detectmob() {
   if(window.innerWidth <= 800) {
     resizePageForMob();
   } else {
	   if( navigator.userAgent.match(/Android/i)
			   || navigator.userAgent.match(/webOS/i)
			   || navigator.userAgent.match(/iPhone/i)
			   || navigator.userAgent.match(/iPad/i)
			   || navigator.userAgent.match(/iPod/i)
			   || navigator.userAgent.match(/BlackBerry/i)
			   || navigator.userAgent.match(/Windows Phone/i)
			   ){
		   resizePageForMob();
		}
	   	else {
	   		resizePageForNormalPage();
		}
   }
}

function resizePageForMob() {
	// ajouter plutôt des classes au dom et gérer les propriétés en css
	// example: jQuery(".sidebar").addClass("...");
	// Cela permet de réduit la taille du code et évite de modifier les propriétés lorsqu'on rollback dans une grosse résolution...
	jQuery(".sidebar").css("display", "none");
	jQuery(".body-container").css("width", "100%");
	jQuery(".body-container").css("margin-left", "0px");
	jQuery(".body-container").css("margin-right", "0px");
}

function resizePageForNormalPage() {
	// retirer plutôt des classes au dom et gérer les propriétés en css
	// example: jQuery(".sidebar").addClass("...");
	jQuery(".sidebar").css("display", "block");
	jQuery(".body-container").css("width", "65%");
	jQuery(".body-container").css("margin-left", "5%");
	jQuery(".body-container").css("margin-right", "5%");
}