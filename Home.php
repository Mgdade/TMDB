<?php include('header.php'); ?>
<?php include('Connect-DB.php'); 

if(isset($_POST['Name']))
     {
$Name = $_POST['Name'];
    
     
    $add = "insert into favorties set Movie_ID = '$Name'";

    $runQuery = mysqli_query($con, $add); 

}

?>

<h2 class="latest-movies"> The Latest Movies </h2>

 



<?php 


$json_string = 'https://api.themoviedb.org/3/discover/movie?api_key=206ebca9df54eb4e60665c640aff3326&sort_by=release_date.desc';
$jsondata = file_get_contents($json_string);
$obj = json_decode($jsondata,true);
/*echo "<pre>";
 print_r($obj);  
  */  
foreach($obj['results'] as $movie){

    
    $id = $movie["id"];
    $title = $movie["title"];
    $poster_path = $movie["poster_path"];
    $genre_ids = $movie["genre_ids"];
    $sql = "insert into latest_Movies set Movie_ID= '$id', Name = '$title', Poster = '$poster_path' ";
    mysqli_query($con, $sql);

}

    /* fetch data from MySQl database */
    $sql = "select Movie_ID, Name, Poster from latest_Movies";
    $result= mysqli_query($con, $sql);    
      while($row = mysqli_fetch_array($result))  
      {  ?>
        <div class="Card_movie">
               
            
            <form name="movie" id="f<?php echo $row["Movie_ID"]; ?>" method="POST" action="Home.php">
                
                <tr>
                    <img  src="https://image.tmdb.org/t/p/w1000_and_h563_face<?php  echo  $row["Poster"];?>"  height="250px" width="200" >
                </tr>
                    
       
             
                
                <tr> 
                    <p class="Name"><?php echo $row["Name"]; ?></p>
                   
                </tr>
                <tr>
                     
                </tr>
                       
                     
            </form>
                
            
        </div>     
    <?php  } ?>
