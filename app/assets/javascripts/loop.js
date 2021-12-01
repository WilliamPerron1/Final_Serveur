/**
 * Boucle de jeu et de rafraichissement
 */

// Variable globale initialisation afin de comparer éventuellement avec un null
window.requestAnimFrame = (function(){ 
	return window.requestAnimationFrame || 
	window.webkitRequestAnimationFrame || 
	window.mozRequestAnimationFrame || 
	window.oRequestAnimationFrame || 
	window.msRequestAnimationFrame || 
	function( callback ){ 
		window.setTimeout(callback, 1000 / 60); 
	}; 
	// apply to our window global to avoid illegal invocations (it's a native) 
	return function (callback, element) { 
		func.apply(window, [callback, element]); 
	};
})();

var canvas = null; 
var context = null;
var lastUpdateTime = 0; 
var acDelta = 0; 
var msPerFrame = 100;

$(document).ready(function(){
});

function onload(){
		canvas = document.getElementById('exercice'); 
		context = canvas.getContext("2d"); 
		// Resize peut etre mis dans la fonction draw... mais attention aux bug de resize 
		resize();
		update();
}

function resize(){
	// ajustement avec -5 et -6 pour empecher le bug de resize qui bouge
	canvas.width = canvas.parentNode.clientWidth - 5;
	canvas.height = canvas.parentNode.clientHeight - 6;
	draw();
}

function update() { 
	requestAnimFrame(update); 
	var delta = Date.now() - lastUpdateTime; 
	if (acDelta > msPerFrame) { 
		acDelta = 0; 
		draw(); 
	} else { 
		acDelta += delta; 
	} 
	lastUpdateTime = Date.now(); 
}
function draw(){}

