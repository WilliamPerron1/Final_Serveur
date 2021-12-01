/**
 * Initialisation et définition des fonctions du tictactoc
 */
	
var canvas = null; 
var context = null;
var tour = "x";

// Initialisation
$(document).ready(function(){
	canvas = document.getElementById('exercice'); 
	context = canvas.getContext("2d"); 
	jeu = [['','',''],['','',''],['','','']];
	canvas.addEventListener('mousedown', doMouseDown);
	$('#message').text("");
	onload();
});

// Etape #3
var espace_case = 50;
var jeu;

function draw(){
	effacer();
	
	dessiner_jeu();

	for (var i = 0; i < jeu.length; i++) {
		for (var j = 0; j < jeu[i].length; j++) {
			if(jeu[i][j] == 'x')
				dessiner_x(i,j);
			
			if(jeu[i][j] == 'o')
				dessiner_o(i,j);
		}
	}
}

// Etape #5
function doMouseDown(event){
	if(tour == "x")
	{
		jeu[parseInt(event.pageX / 50)][parseInt(event.pageY / 50)] = "x";
		tour = "o";
	}
	else
	{	
		jeu[parseInt(event.pageX / 50)][parseInt(event.pageY / 50)] = "o";
		tour = "x";
	}
	gagnant();
}
// Etape #4
function afficher_message(message){
	$('#message').text(message);
}
function effacer(){
	context.fillStyle = 'white'; 
	context.fillRect(0, 0, canvas.width, canvas.height); 
}

// Etape #2
function dessiner_x(x,y){
	context.beginPath();
	context.moveTo(espace_case * x, espace_case * y);
	context.lineTo(espace_case + (espace_case * x),espace_case + (espace_case * y));	
	context.stroke();

	context.beginPath();
	context.moveTo(espace_case + (espace_case * x), espace_case * y);	
	context.lineTo(espace_case * x,espace_case + ( espace_case * y));
	context.stroke();
}
function dessiner_o(x,y){
	context.beginPath();
	context.arc((espace_case * x) + (espace_case/2), espace_case * y + (espace_case/2),25	,0,2*Math.PI);
	context.stroke();
}

// Etape #1
function dessiner_jeu(){
	context.beginPath();
	context.moveTo(espace_case,0);
	context.lineTo(espace_case,espace_case * 3);	
	context.stroke();

	context.beginPath();
	context.moveTo(espace_case * 2,0);
	context.lineTo(espace_case * 2,espace_case * 3);	
	context.stroke();
	
	context.beginPath();
	context.moveTo(0,espace_case);
	context.lineTo(espace_case * 3,espace_case);	
	context.stroke();
	
	context.beginPath();
	context.moveTo(0,espace_case * 2);
	context.lineTo(espace_case * 3,espace_case * 2);	
	context.stroke();
}

function gagnant(){
	var gagnant = '';
	var ligne;
	for (ligne = 0; ligne <= 2; ligne++) {
		if(jeu[ligne][1] == jeu[ligne][0] && jeu[ligne][2] == jeu[ligne][1] && jeu[ligne][1] != '')
		{
			gagnant = jeu[ligne][1];
		}
		if(jeu[1][ligne] == jeu[0][ligne] && jeu[2][ligne] == jeu[1][ligne] && jeu[1][ligne] != '')
		{
			gagnant = jeu[1][ligne];
		}		
	}
	if(jeu[0][0] == jeu[1][1] && jeu[2][2] == jeu[1][1] && jeu[1][1] != '')
	{
		gagnant = jeu[1][1];	
	}
	if(jeu[0][2] == jeu[1][1] && jeu [1][1] == jeu[2][0] && jeu[2][0] != '')
	{
		gagnant = jeu[1][1];
	}
	if(gagnant == 'x' || gagnant == 'o')
	{
		$("#message").text("Le gagnant est: " + gagnant);
	}else{
		$("#message").text("Partie en cours!");
	}
}

