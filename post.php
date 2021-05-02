<?php
include('include/connection.php');
include('public/header.php');
?>

<!-- Start Content -->
<div class="content">
  <div class="container">
    <div class="row">
      <div class="col-md-9">
<?php
$id = $_GET['id'];
$query = "SELECT * FROM posts WHERE id ='$id'";
$res = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($res);
?>
<div class="post">

  <div class="post-image">
<img src="uploads/<?php echo $row['postImage'] ?>">
  </div>

  <div class="post-title">
<h4> <?php echo $row['postTitle'] ?> </h4>
  </div>

  <div class="post-details">
    <p class="post-info">
<span><i class="fas fa-user"></i><?php echo $row['postAuthor']; ?> </span>
<span><i class="far fa-calendar-alt"></i><?php echo $row['postDate']; ?></span>
<span><i class="fas fa-tags"></i><?php echo $row['postCat']; ?></span>
    </p>
<p class="postContent">
  <!-- -->
<?php echo $row['postContent']; ?>
<!-- -->
</p>
</div>

</div>



       </div>
      <div class="col-md-3">
<!-- Start Catagories -->
<div class="categories">

  <h4>التصنيفات</h4>
<ul>
<?php
$query = "SELECT * FROM categories ORDER BY id DESC";
$res = mysqli_query($con,$query);

while($row = mysqli_fetch_assoc($res)){
?>
  <li>
<a href="category.php?category=<?php echo $row['categoryName'] ?>">
<span><i class="fas fa-tags"></i></span>
<span><?php echo $row['categoryName']; ?></span>
</a>
  </li>
<?php
}
?>
</ul>
      </div>
      <!-- End Catagories -->

      <!-- Start Latest Posts -->
<div class="last-posts">
  <h4>أحدث المنشورات</h4>

  <ul>
<?php
$query = "SELECT * FROM posts ORDER BY id DESC LIMIT 6";
$res = mysqli_query($con,$query);

while($row = mysqli_fetch_assoc($res)){
?>
    <li>
<a href="post.php?id=<?php echo $row['id'] ?>">
<span class="simg"> <img src="uploads/<?php echo $row['postImage']; ?>" alt="img1"> </span>
<span><?php echo $row['postTitle']; ?></span>
</a>
    </li>
<?php
}
?>
  </ul>
</div>
      <!-- End Latest Posts -->

    </div>
    </div>
  </div>
</div>
<!-- End Content -->
<?php
include('public/footer.php');
?>
