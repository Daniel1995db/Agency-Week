$(document).ready(function(){
	$('#nav-icon3').click(function(){
		$(this).toggleClass('open');
	});
});
document.addEventListener("turbolinks:load", function(){

	const elNav = document.querySelector(".nav-bar-options");
	const elHam = document.querySelector("#nav-icon3");

	elHam.addEventListener("click", function(){
    elNav.classList.toggle("open");
  });
});