<?php  include ("header.php"); 
       include ("Connect-DB.php");


if(isset($_POST['favorite']))
     {
$Movie_ID = $_POST['Movie_ID'];
    
     
    $add = "delete from favorties set Movie_ID = '$Movie_ID'";

    $runQuery = mysqli_query($con, $add); 
 
}

?>
  
   <div class="container">
       <div class="hearder">
           <div class="nav"></div>
       </div>
   </div>
    <ul class="id">
        <li class="liii"></li>
        <li class="liii"></li>
        <li class="liii"></li>
        <li class="liii"></li>
        <li class="liii"></li>
    </ul>
      
       <div>
           <p></p>
       </div>   
    
<html DOCTYPE>

    <h2 class="sub_Title"> My Favorties Movie</h2>
<?php    $Select = "SELECT favorties.Movie_ID, movie.Name, movie.Poster FROM favorties JOIN movie on favorties.Movie_ID= movie.Movie_ID";
    $runQuery = mysqli_query($con, $Select);    
      while($row = mysqli_fetch_array($runQuery))
         
      {
    ?>
           <form name="movie" id="f<?php echo $row["Movie_ID"]; ?>" method="POST" action="Favorites.php">
           <div class="Card_favorites">
               
                <table>      
                  
               <td>
        <img  src="https://image.tmdb.org/t/p/w1000_and_h563_face<?php  echo  $row["Poster"];?>"  height="250px" width="200">
                   
                       <div class="Name-favorit">    <?php echo $row["Name"]; ?> </div>
                    
                    </td>
               
               <td>
             
                    </td>
               
               
             <div class="remove_favorties"> 
                 
                 <Button style="background:none;border : none;" type=submit name="favorite"> <img src="../TMDB/images/x-button.png"> </Button>
                    <input type="hidden" name="Movie_ID" value="<?php echo $row["Movie_ID"]; ?>">
                    
                    
                    
                    </div> 
               </table>    
           </div> 
    </form>
          
    <?php  }  ?>
    






</html>