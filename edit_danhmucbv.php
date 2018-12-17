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
			//Kiểm tra ID có phải là kiểu số không
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)))
			{
				$id=$_GET['id'];
			}
			else
			{
				header('Location: list_danhmucbv.php');
				exit();
			}		
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
					$query="UPDATE tbldanhmucbaiviet
							SET danhmucbaiviet='{$danhmucbaiviet}',
								parent_id='{$parent_id}',
								menu='{$menu}',
								home='{$home}',
								ordernum={$ordernum},
								status={$status}
							WHERE id={$id}
					";
					$results=mysqli_query($dbc,$query); 
					kt_query($results,$query);	
					if(mysqli_affected_rows($dbc)==1)
					{
						echo "<p style='color:green;'>Sửa thành công</p>";
					}
					else
					{
						echo "<p class='required'>Bạn chưa sửa gì</p>";	
					}								
				}
				else
				{
					$message="<p class='required'>Bạn hãy nhập đầy đủ thông tin</p>";
				}
			}
			$query_id="SELECT danhmucbaiviet,parent_id,menu,home,ordernum,status FROM tbldanhmucbaiviet WHERE id={$id}";
			$result_id=mysqli_query($dbc,$query_id);
			kt_query($result_id,$query_id);
			//Kiểm tra xem ID có tồn tại không
			if(mysqli_num_rows($result_id)==1)
			{
				list($danhmucbaiviet,$parent_id,$menu,$home,$ordernum,$status)=mysqli_fetch_array($result_id,MYSQLI_NUM);
			}
			else
			{
				$message="<p class='required'>ID danh mục bài viết không tồn tại</p>";	
			}
		?>
		<form name="frmadd_video" method="POST">
			<?php 
				if(isset($message))
				{
					echo $message;
				}
			?>
			<h3>Sửa Danh mục bài viết: <?php if(isset($danhmucbaiviet)){ echo $danhmucbaiviet;} ?></h3>
			<div class="form-group">
				<label>Danh mục bài viết</label>
				<input type="text" name="danhmucbaiviet" value="<?php if(isset($danhmucbaiviet)){ echo $danhmucbaiviet;} ?>" class="form-control" placeholder="Danh mục bài viết">
				<?php 
					if(isset($errors) && in_array('danhmucbaiviet',$errors))
					{
						echo "<p class='required'>Bạn chưa nhập danh mục bài viết</p>";
					}
				?>
			</div>
			<div class="form-group">
				<label style="display:block;">Danh mục cha</label>
				<?php selectCtrl_e($parent_id,'parent','forFormdim');?>
			</div>
			<div class="form-group">
				<label style="display:block;">Hiện thị menu</label>
				<?php 
					if($menu==1)
					{
					?>
					<label class="radio-inline"><input checked="checked" type="radio" name="menu" value="1">Hiện thị</label>
					<label class="radio-inline"><input type="radio" name="menu" value="0">Không hiện thị</label>
					<?php 
					}
					else
					{
					?>
					<label class="radio-inline"><input type="radio" name="menu" value="1">Hiện thị</label>
					<label class="radio-inline"><input checked="checked" type="radio" name="menu" value="0">Không hiện thị</label>
					<?php		
					}
				?>
			</div>
			<div class="form-group">
				<label style="display:block;">Hiện thị Home</label>
				<?php 
					if($home==1)
					{
					?>
					<label class="radio-inline"><input checked="checked" type="radio" name="home" value="1">Hiện thị</label>
					<label class="radio-inline"><input type="radio" name="home" value="0">Không hiện thị</label>
					<?php 
					}
					else
					{
					?>
					<label class="radio-inline"><input type="radio" name="home" value="1">Hiện thị</label>
					<label class="radio-inline"><input checked="checked" type="radio" name="home" value="0">Không hiện thị</label>
					<?php		
					}
				?>
			</div>
			<div class="form-group">
				<label>Thứ tự</label>
				<input type="text" value="<?php if(isset($ordernum)){ echo $ordernum;} ?>" name="ordernum" class="form-control" placeholder="Thứ tự">
			</div>
			<div class="form-group">
				<label style="display:block;">Trạng thái</label>
				<?php 
					if(isset($status)==1)
					{
					?>
					<label class="radio-inline"><input checked="checked" type="radio" name="status" value="1">Hiện thị</label>
					<label class="radio-inline"><input type="radio" name="status" value="0">Không hiện thị</label>
					<?php 
					}
					else
					{
					?>
					<label class="radio-inline">
						<input type="radio" name="status" value="1">Hiện thị
					</label>
					<label class="radio-inline">
						<input checked="checked" type="radio" name="status" value="0">Không hiện thị
					</label>
					<?php		
					}
				?>
			</div>
			<input type="submit" name="submit" class="btn btn-primary" value="Sửa">
		</form>
	</div>
</div>
<?php include('includes/footer.php') ?>