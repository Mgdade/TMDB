<?php include('header.php'); ?>
<?php include('Connect-DB.php'); 

if(isset($_POST['favorite']))
     {
$Movie_ID = $_POST['Movie_ID'];
    
     
    $add = "insert into favorties set Movie_ID = '$Movie_ID'";

    $runQuery = mysqli_query($con, $add); 
 
}

?>

<body>
<form name="movie" method="POST" action="Search.php">
<div class="Searh_box">
<h2 class="search_title"> Search Movie </h2>
   <input type="text" id="search-txt"  placeholder="Enter Name to Search" name="movie_name">
   <input type="submit" id="search-btn" value="Search Movie" name="search">
    
   <?php
     if(isset($_POST['search']))
     {
       $name =$_POST['movie_name'];   
     
    $search = "select Movie_ID, Name, Poster from movie where Name Like '%$name%'";
    $runQuery = mysqli_query($con, $search);    
      while($row = mysqli_fetch_array($runQuery)) 
          
      {  ?>
        <div class="Card_movie">
               
            
            <form name="movie" id="f<?php echo $row["Movie_ID"]; ?>" method="POST" action="Search.php">
                
                <tr>
                    <img  src="https://image.tmdb.org/t/p/w1000_and_h563_face<?php  echo  $row["Poster"];?>"  height="230px" width="180" >
                </tr>
                <tr><div class="add_favorties"> 
                          <Button style="background:none;border : none;" type=submit name="favorite"> <img src="../TMDB/images/favorite.png"> </Button>
                    <input type="hidden" name="Movie_ID" value="<?php echo $row["Movie_ID"]; ?>">
       
             </div></tr>
                
                <tr> 
                    <p class="Name"><?php echo $row["Name"]; ?></p>
                </tr>
                
                <tr>
                     <input type="submit" value="More Details"  class="More-Detailes">
                     <input type="hidden"  value="<?php echo $row["Name"]; ?>" name="More">
                </tr>
                
                       
                     
            </form>
                
            
        </div>     
    <?php  }
     
     
/*     else 
    $search = "select Movie_ID, Name, Poster from movie ";
    $runQuery = mysqli_query($con, $search);
  */   
     } ?>  
    </div>

    </form>
 
  </body>  


<?php 


$json_string = 'https://api.themoviedb.org/3/search/movie?api_key=206ebca9df54eb4e60665c640aff3326&query=movie';
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
    $overview = $movie['overview'];
    $sql = "insert into movie set Movie_ID= '$id', Name = '$title', Poster = '$poster_path', Movie_Description = '$overview'	 ";
    mysqli_query($con, $sql);

}
?>








 
        