<?php
include('include/connection.php');
include('include/header.php');

if (isset($_POST['title']))
{
    $pTitle = $_POST['title'];
}

if (isset($_POST['category']))
{
    $pCat = $_POST['category'];
}

if (isset($_POST['content']))
{
    $pContent = $_POST['content'];
}

if (isset($_POST['pAuthor']))
{
    $pAuthor = $_POST['pAuthor'];
}

if (isset($_POST['add']))
{
    $pAdd = $_POST['add'];
}

// Image
if (isset($_FILES['postImage']['name']))
{
  $imageName = $_FILES['postImage']['name'];
}

if (isset($_FILES['postImage']['tmp_name']))
{
  $imageTmp = $_FILES['postImage']['tmp_name'];
}

if(isset($pAdd)){
if(empty($pTitle) || empty($pContent)){
  echo "<div class='alert alert-danger'>"."الرجاء ملء الحقول أدناه"."</div>";
}elseif(strlen($pContent) > 10000){
  echo "<div class='alert alert-danger'>"."محتوي المنشور كبير جدا"."</div>";
}else{
$postImage = rand(0,1000)."_".$imageName;
  move_uploaded_file($imageTmp,"uploads\\".$postImage);

$query = "INSERT INTO posts(postTitle,postCat,postImage,postContent,postAuthor)
VALUES('$pTitle','$pCat','$postImage','$pContent','$pAuthor')";
$res = mysqli_query($con,$query);
if(isset($res)){
  echo "<div class='alert alert-success'>"."تمت إضافة المنشور بنجاح"."</div>";
}else{
  echo "<div class='alert alert-danger'>"."حدث خطأ ما"."</div>";
}
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

<li><a href"logout.php">
  <span class=""> <i class="fas fa-sign-out-alt"></i> </span>
  <span class="">تسجيل الخروج</span>
</a></li>

</ul>
  </div>

<!-- -->

  <div class="col-md-10" id="main-area">
    <button class="btn-custom">مقال جديد</button>
<div class="add-category">
  <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST" enctype="multipart/form-data">
    <div class="form-group">
      <label for="title">عنوان المقال</label>
      <input type="text" name="title" class="form-control">
    </div>
    <div class="form-group">
      <label for="cate">التصنيف</label>
      <select name="category" class="form-control" id="cate">
<?php
$query = "SELECT * FROM categories";
$res = mysqli_query($con,$query);
while ($row = mysqli_fetch_assoc($res)) {
?>
<option >
<?php echo $row['categoryName']; ?>
</option>
<?php
}
?>
      </select>
    </div>

    <div class="form-group">
      <label for="image">صورة المقال</label>
<input type="file" id="image" class="form-control" name="postImage">
    </div>

    <div class="form-group">
<label for="content">نص المقال</label>
<textarea class="form-control" rows="10" cols="30" name="content"></textarea>
    </div>

    <button class="btn-custom form-control" name="add">نشر المقال</button>
  </form>
</div>
  </div>















<?php
include('include/footer.php');
?>
