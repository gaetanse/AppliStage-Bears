<?php 
require 'header.php'; 

if (isset($_GET['choix'])){
	
	$nom=$_GET['choix'];
	
	if ($nom=="jeu"){
		require 'description.php';
	}
	else if ($nom=="serveur"){
		
	}
	else if ($nom=="launcher"){
		
	}
	else if ($nom=="outil"){
		
	}
	
}

?>

</body>