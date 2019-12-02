document.getElementById("id_logic").innerHTML = "2019.11.25.6";
document.getElementById("id_start").addEventListener("click", start);
document.getElementById("id_stop").addEventListener("click", stop);

 var timer_id;
 var unghi = {};
unghi.valoare = 0;
var muncitor = null;
 
 function desenare(unghi) {
	
	  var canvas = document.getElementById("id_canvas");
	  var context = canvas.getContext("2d");
	  
	  
	  var R = 100;
	  var r = 10;
	  
	  
	  context.clearRect(0, 0, canvas.width, canvas.height);
	  context.beginPath();
	  var x = canvas.width / 2 + R * Math.cos(unghi.valoare / 180 * Math.PI);
	  var y = canvas.height  / 2 + R * Math.sin(unghi.valoare / 180 * Math.PI); 
	  
	  context.arc(x, y, r, 0, 2 * Math.PI);
	  context.stroke();
	  
	  unghi.valoare++;
	  if (unghi.valoare == 360){
		  unghi.valoare = 1;
	  }
	 
 }
 
function start()
{

document.getElementById("id_start").disabled = true;
document.getElementById("id_stop").disabled = false;

timer_id = setInterval(desenare, 20, unghi);
if (muncitor ==null){
	
muncitor = new Worker("prime.js");
muncitor.onmessage = function (e) {
	   document.getElementById("id_prime").innerHTML = e.data;
	   
    }
	muncitor.postMessage("start");
	
}
  else
	  muncitor.postMessage("start");


function stop ()
{
document.getElementById("id_start").disabled = false;
document.getElementById("id_stop").disabled = true;

clearInterval(timer_id);
muncitor.postMessage("stop");


}