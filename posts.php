<?php
include('include/connection.php');
include('include/header.php');

if (isset($_GET['id']))
{
    $id = $_GET['id'];
}
if(isset($id)){
  $query ="DELETE FROM posts WHERE id ='$id'";
$delete = mysqli_query($con,$query);
if(isset($delete)){
  echo "<div class='alert alert-success'>"."تم الحذف بنجاح"."</div>";
}else{
  echo "<div class='alert alert-danger'>"."حدث خطأ ما"."</div>";
}
}
?>

<!-- Start Container -->
<div class="content">
  <div class="container-fluid">
<div class="row">

  <div class="col-md-2" id="side-area">
<h4>لوحة التحكم</h4>
<ul>

  <li><a href="categories.php">
    <span class=""> <i class="fas fa-tags"></i> </span>
    <span class="">التصنيفات</span>
</a></li>

<!-- المقالات -->
<li data-toggle="collapse" data-target="#menu">
  <a href="#">
  <span class=""> <i class="far fa-newspaper"></i> </span>
  <span class="">المقالات</span>
</a>
</li>
<ul class="collapse" id="menu">

<li>
  <a href="new-post.php">
<span><i class="fas fa-edit"></i></span>
<span>مقال جديد</span>
</a>
</li>

<li>
  <a href="posts.php">
<span><i class="fas fa-th-large"></i></span>
<span>كل المقالات</span>
</a>
</li>

</ul>
<!-- المقالات -->

<li><a href="index.php" target="_blank">
  <span class=""> <i class="fas fa-window-restore"></i> </span>
  <span class="">عرض الموقع</span>
</a></li>

<li><a href="logout.php">
  <span class=""> <i class="fas fa-sign-out-alt"></i> </span>
  <span class="">تسجيل الخروج</span>
</a></li>

</ul>
  </div>

  <div class="col-md-10" id="main-area">
<!-- Display all posts -->
<table class="table table-ordered">
<tr>

  <th>عنوان المقال</th>
  <th>كاتب المقال</th>
  <th>صورة المقال</th>
  <th>تاريخ المقال</th>
  <th>حذف المقال</th>
</tr>
<?php
$query = "SELECT * FROM posts ORDER BY id DESC";
$res = mysqli_query($con,$query);
while($row = mysqli_fetch_assoc($res)){
?>
  <tr>
    <td> <?php echo $row['postTitle']; ?> </td>
    <td> <?php echo $row['postAuthor']; ?> </td>
    <td> <img src="uploads/<?php echo $row['postImage'];?>" width="100px" height="80px"> </td>
    <td> <?php echo $row['postDate']; ?> </td>
    <td> <a href="posts.php?id=<?php echo $row['id'] ?>">
   <button class="btn-custom">حذف المقال</button> </a> </td>
  </tr>
<?php
}
?>
</table>
      </div>
    </div>
  </div>
</div>
<!-- End Container -->












<?php
include('include/footer.php');
?>
