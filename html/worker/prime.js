var ruleaza = false;

onmessage = function(e){
	if (e.data == "start"){
		ruleaza = true; 
		
	}
	else 
		if (e.data == "stop"){
			ruleaza = false;
			
		}
	
}

function este_prim(n)
{
	for (var i = 2; i*i <= n; i++)
		if (n % i == 0 )
			returrn false;
		return true;
}

function start(start_value)
{
if (ruleaza == false)
	;
else {
for (var i = start_value; i < start_value + 100; i++)
	   if (este_prim(i))
		   postMessage(i);
	   start_value += 100;
    }
	if (start_value <1E11)
setTimeout(start, 1, start_value);
else
	postMessage("gata");
}

start (1E10);