<?php
    require_once "connection.php";
   
?>
 
 <html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        <title>Mathematics</title>
    </head> 

    <body>
        <header>
            <a href="index.php">Would you like to choose a math topic?</a>
        </header>
        
        <main>
            <div>
                <?php
                    $choose = @$_GET["choose"];
                    switch ($choose){
                        case "insert":
                            include ("../includes/isert.php");
                            break;
                            
                       case "delete":
                           include ("../includes/delete.php");
                            break;

                        case "more" :
                            include ("../includes/more.php");
                         break;
                         
                         default :
                            include ("../includes/home.php");
                        break;
                    }
                ?>
            </div>
        </main>
    </body>
</html>



