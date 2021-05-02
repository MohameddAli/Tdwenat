<?php
session_start();
include('include/connection.php');
include('include/header.php');

if (isset($_POST['category']))
{
    $cName = $_POST['category'];
}
if (isset($_POST['add']))
{
    $cAdd = $_POST['add'];
}
if (isset($_GET['id']))
{
    $id = $_GET['id'];
}

if(!isset($_SESSION['id'])){
  echo "<div class='alert alert-danger'>"."لايمكنك الوصول لهذه الصفحة"."</div>";
  header('REFRESH:2;URL=login.php');
}else{



if(isset($id)){
  $query ="DELETE FROM categories WHERE id ='$id'";
$delete = mysqli_query($con,$query);
if(isset($delete)){
  echo "<div class='alert alert-success'>"."تم الحذف بنجاح"."</div>";
}else{
  echo "<div class='alert alert-danger'>"."حدث خطأ ما"."</div>";
}
}

if(isset($cAdd)){
  if(empty($cName)){
    echo "<div class='alert alert-danger'>"."الرجاء ملء الحقل"."</div>";
  }elseif(strlen($cName) > 100){
    echo "<div class='alert alert-danger'>"."أسم التصنيف كبير جدا"."</div>";
  }
  else {
    $query = "INSERT INTO categories(categoryName) VALUES('$cName')";
    mysqli_query($con,$query);
    echo "<div class='alert alert-success'>"."تمت إضافة التصنيف"."</div>";
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

  <li><a href="#">
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
<div class="add-category">
  <form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
    <div class="form-group">
      <label for="category">تصنيف جديد</label>
      <input type="text" name="category" class="form-control">
    </div>
    <button class="btn-custom form-control" name="add">إضافة</button>
  </form>
</div>

<!-- Display Categories -->
<div class="display-cat mt-5">
<table class="table table-borderd">

  <tr>
    <th>رقم الفئة</th>
    <th>اسم الفئة</th>
    <th>تاريخ الإضافة</th>
    <th>حذف التصنيف</th>
  </tr>

  <?php
$query = "SELECT * FROM categories ORDER BY id DESC";
$res = mysqli_query($con,$query);
$num = 0;
while($row = mysqli_fetch_assoc($res)){
  $num++;
  ?>
<tr>
  <td> <?php echo $num; ?> </td>
  <td><?php echo $row['categoryName']; ?></td>
  <td><?php echo $row['categoryDate']; ?></td>
  <td> <a href="categories.php?id=<?php echo $row['id']; ?>">
<button class="btn-custom">حذف التصنيف</button> </a> </td>


</tr>
<?php
}
  ?>

</table>
</div>

  </div>

</div>
  </div>
</div>
<!-- End Container -->
<?php
}
?>
<?php
include('include/footer.php');
?>
