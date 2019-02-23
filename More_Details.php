<?php include('Connect-DB.php'); ?>
<?php  include("header.php");   

$More = $_POST['More'];
    
     
    $search = "select * from Movie where Name = '$More'";

    $runQuery = mysqli_query($con, $search);    
      while($row = mysqli_fetch_array($runQuery)) 
          
      {

?>
        <div>
               
            
            <form name="movie" id="f<?php echo $row["Movie_ID"]; ?>" method="POST" action="">
                
                <tr>
                    <img class="image-of-movie" src="https://image.tmdb.org/t/p/w1000_and_h563_face<?php  echo  $row["Poster"];?>"  height="230px" width="180" >
                </tr>
                 <div class="Details-of-movie"> 
    
                <tr><h2> Name of Movie: </h2> 
                    <p class="Name"><?php echo $row["Name"]; ?></p>
                </tr>
                <tr>
                <h2> Description:</h2>
                   <p> <?php echo $row["Movie_Description"]; ?></p>
                </tr>
                </div>
                
                <tr><div class="add_favorties"> 
                    <Button style="background:none;border : none;" type=submit name="favorite"> <img src="../TMDB/images/favorite.png"> </Button>
                    <input type="hidden" name="Name" value="<?php echo $row["Movie_ID"]; ?>">
                    
       
             </div></tr>
                
                
                
                       
                     
            </form>
                
            
        </div>     
    <?php  } ?>

<html>
<body>
    
   
    
   
    
    
    </body>

</html>