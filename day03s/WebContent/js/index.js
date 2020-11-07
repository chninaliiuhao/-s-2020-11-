var up = document.getElementById("up-icon");
var down = document.getElementById("down-icon");
up.style.borderBottomColor = "#FD8712";
up.onclick = function(){
	up.style.borderBottomColor = "#FD8712";
	down.style.borderTopColor = "#bababa";
}
down.onclick = function(){
	up.style.borderBottomColor = "#bababa";
	down.style.borderTopColor = "#FD8712";
}