<style type="text/css">
.required
{
	color:red;
}
</style>
<?php include('includes/header.php') ?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<?php 
			include('../inc/myconnect.php');
			include('../inc/function.php');
			if($_SERVER['REQUEST_METHOD']=='POST')
			{
				$errors=array();
				if(empty($_POST['danhmucbaiviet']))
				{
					$errors[]='danhmucbaiviet';
				}
				else
				{
					$danhmucbaiviet=$_POST['danhmucbaiviet'];
				}				
				if(empty($_POST['ordernum']))
				{
					$ordernum=0;
				}	
				else
				{
					$ordernum=$_POST['ordernum'];
				}	
				$menu=$_POST['menu'];
				$home=$_POST['home'];									
				$status=$_POST['status'];
				if(empty($errors))
				{
					if($_POST['parent']==0)
					{
						$parent_id=0;
					}
					else
					{
						$parent_id=$_POST['parent'];
					}
					$query="INSERT INTO tbldanhmucbaiviet(danhmucbaiviet,parent_id,menu,home,ordernum,status) 
						VALUES('{$danhmucbaiviet}',{$parent_id},$menu,$home,$ordernum,$status)";
					$results=mysqli_query($dbc,$query); 
					kt_query($results,$query);	
					if(mysqli_affected_rows($dbc)==1)
					{
						echo "<p style='color:green;'>Thêm mới thành công</p>";
					}
					else
					{
						echo "<p class='required'>Thêm mới không thành công</p>";	
					}
					$_POST['danhmucbaiviet']='';					
					$_POST['ordernum']='';					
				}
				else
				{
					$message="<p class='required'>Bạn hãy nhập đầy đủ thông tin</p>";
				}
			}
		?>
		<form name="frmadd_video" method="POST">
			<?php 
				if(isset($message))
				{
					echo $message;
				}
			?>
			<h3>Thêm mới Danh mục bài viết</h3>
			<div class="form-group">
				<label>Danh mục bài viết</label>
				<input type="text" name="danhmucbaiviet" value="<?php if(isset($_POST['danhmucbaiviet'])){ echo $_POST['danhmucbaiviet'];} ?>" class="form-control" placeholder="Danh mục bài viết">
				<?php 
					if(isset($errors) && in_array('danhmucbaiviet',$errors))
					{
						echo "<p class='required'>Bạn chưa nhập danh mục bài viết</p>";
					}
				?>
			</div>
			<div class="form-group">
				<label style="display:block;">Danh mục cha</label>
				<?php selectCtrl('parent','forFormdim');?>
			</div>
			<div class="form-group">
				<label style="display:block;">Hiện thị menu</label>
				<label class="radio-inline"><input type="radio" name="menu" value="1">Hiện thị</label>
				<label class="radio-inline"><input checked="checked" type="radio" name="menu" value="0">Không hiện thị</label>
			</div>
			<div class="form-group">
				<label style="display:block;">Hiện thị Home</label>
				<label class="radio-inline"><input type="radio" name="home" value="1">Hiện thị</label>
				<label class="radio-inline"><input checked="checked" type="radio" name="home" value="0">Không hiện thị</label>
			</div>
			<div class="form-group">
				<label>Thứ tự</label>
				<input type="text" value="<?php if(isset($_POST['ordernum'])){ echo $_POST['ordernum'];} ?>" name="ordernum" class="form-control" placeholder="Thứ tự">
			</div>
			<div class="form-group">
				<label style="display:block;">Trạng thái</label>
				<label class="radio-inline"><input checked="checked" type="radio" name="status" value="1">Hiện thị</label>
				<label class="radio-inline"><input type="radio" name="status" value="0">Không hiện thị</label>
			</div>
			<input type="submit" name="submit" class="btn btn-primary" value="Thêm mới">
		</form>
	</div>
</div>
<?php include('includes/footer.php') ?>