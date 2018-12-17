<?php error_reporting(0);?>
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
			include('../inc/images_helper.php');
			include('../inc/myconnect.php');
			include('../inc/function.php');
			if($_SERVER['REQUEST_METHOD']=='POST')
			{
				$errors=array();
				if(empty($_POST['title']))
				{
					$errors[]='title';
				}
				else
				{
					$title=$_POST['title'];
				}								
				if(empty($_POST['ordernum']))
				{
					$ordernum=0;
				}	
				else
				{
					$ordernum=$_POST['ordernum'];
				}		
				$link=$_POST['link'];								
				$status=$_POST['status'];
				if(empty($errors))
				{
					//Upload ảnh
					if(($_FILES['img']['type']!="image/gif")
						&&($_FILES['img']['type']!="image/png")
						&&($_FILES['img']['type']!="image/jpeg")
						&&($_FILES['img']['type']!="image/jpg"))
					{
						$message="File không đúng định dạng";	
					}
					elseif ($_FILES['img']['size']>1000000) 
					{
						$message="Kích thước phải nhỏ hơn 1MB";						
					}
					elseif ($_FILES['img']['size']=='') 
					{
						$message="Bạn chưa chọn file ảnh";
					}
					else
					{
						$img=$_FILES['img']['name'];
						$link_img='upload/'.$img;
						move_uploaded_file($_FILES['img']['tmp_name'],"../upload/".$img);																														
						//Xử lý Resize, Crop hình anh
						$temp=explode('.',$img);
						if($temp[1]=='jpeg' or $temp[1]=='JPEG')
						{
							$temp[1]='jpg';
						}
						$temp[1]=strtolower($temp[1]);
						$thumb='upload/resized/'.$temp[0].'_thumb'.'.'.$temp[1];
						$imageThumb=new Image('../'.$link_img);
						//Resize anh						
						if($imageThumb->getWidth()>700)
						{
							$imageThumb->resize(700,'resize');
						}				
						//crop anh
						//$imageThumb->resize(1280,468,'crop');
						$imageThumb->save($temp[0].'_thumb','../upload/resized');
					}
					$query="INSERT INTO tblslider(title,anh,anh_thumb,link,ordernum,status) 
						VALUES('{$title}','{$link_img}','{$thumb}','{$link}',$ordernum,$status)";
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
					$_POST['title']='';
					$_POST['link']='';
					$_POST['ordernum']='';					
				}
				else
				{
					$message="<p class='required'>Bạn hãy nhập đầy đủ thông tin</p>";
				}
			}
		?>
		<form name="frmadd_slider" method="POST" enctype="multipart/form-data">
			<?php 
				if(isset($message))
				{
					echo $message;
				}
			?>
			<h3>Thêm mới Slider</h3>
			<div class="form-group">
				<label>Title</label>
				<input type="text" name="title" value="<?php if(isset($_POST['title'])){ echo $_POST['title'];} ?>" class="form-control" placeholder="Title">
				<?php 
					if(isset($errors) && in_array('title',$errors))
					{
						echo "<p class='required'>Bạn chưa nhập tiêu đề</p>";
					}
				?>
			</div>
			<div class="form-group">
				<label>Ảnh đại diện</label>
				<input type="file" name="img" value="">
			</div>
			<div class="form-group">
				<label>Link</label>
				<input type="text" value="<?php if(isset($_POST['link'])){ echo $_POST['link'];} ?>" name="link" class="form-control" placeholder="Link slider">
				<?php 
					if(isset($errors) && in_array('link',$errors))
					{
						echo "<p class='required'>Bạn chưa nhập link video</p>";
					}
				?>
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