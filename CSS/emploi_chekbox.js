 function test(){
	var choice = document.getElementById('groupe');
	var selectValue = document.getElementById('type').options[document.getElementById('type').selectedIndex].value;
	if(selectValue=='Cours'){		
		choice.disabled=true;	
	}	
	else {
		choice.disabled=false;
	}
}

 // fin active/desactive liste derolante
			function getXhr(){
                                var xhr = null; 
				if(window.XMLHttpRequest)  
				   xhr = new XMLHttpRequest(); 
				else if(window.ActiveXObject){   
				   try {
			                xhr = new ActiveXObject("Msxml2.XMLHTTP");
			            } catch (e) {
			                xhr = new ActiveXObject("Microsoft.XMLHTTP");
			            }
				}
				else {   
				   alert("Votre navigateur ne supporte pas les objets XMLHTTPRequest..."); 
				   xhr = false; 
				} 
                                return xhr;
			}
			function go(){
				var xhr = getXhr();
 				xhr.onreadystatechange = function(){
 					if(xhr.readyState == 4 && xhr.status == 200){
						leselect = xhr.responseText;
 						document.getElementById('module').innerHTML = leselect;
					}
				}
 				xhr.open("POST","ajax_prof.php",true);
 				xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
 				sel = document.getElementById('prof');
				id_Module = sel.options[sel.selectedIndex].value;
				xhr.send("id_module="+id_Module);
			}
 //fin prgrm liste derolante
 
  
   
    function test2(f)  
 {  
 if(f.jour.selectedIndex == 0) 
 {  
 alert('Vous devez selectionner un jour!');  
 return false;  
 }  
  else if(f.heure.selectedIndex == 0) 
 {  
 alert('Vous devez selectionner une heure!');  
 return false;  
 }  
 else if(f.prof.selectedIndex == 0) 
 {  
 alert('Vous devez selectionner un module!');  
 return false;  
 }  
 else if(f.type.selectedIndex == 0) 
 {  
 alert('Vous devez selectionner un type!');  
 return false;  
 }  
 else if(f.salle.selectedIndex == 0) 
 {  
 alert('Vous devez selectionner une salle!');  
 return false;  
 }  
 {return true;} 
 }  