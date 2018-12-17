<?php ob_start();?>
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
			//Kiểm tra ID có phải là kiểu số không
			if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)))
			{
				$id=$_GET['id'];
			}
			else
			{
				header('Location: list_slider.php');
				exit();
			}		
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
					if ($_FILES['img']['size']=='') 
					{
						$link_img=$_POST['anh_hi'];
						$thumb=$_POST['anhthumb_hi'];
					}
					else
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
						//xoa anh trong thu muc 
						$sql="SELECT anh,anh_thumb FROM tblslider WHERE id={$id}";
						$query_a=mysqli_query($dbc,$sql);
						$anhInfo=mysqli_fetch_assoc($query_a);
						unlink('../'.$anhInfo['anh']);
						unlink('../'.$anhInfo['anh_thumb']);
					}
					$query="UPDATE tblslider
							SET title='{$title}',
								anh='{$link_img}',
								anh_thumb='{$thumb}',
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
			$query_id="SELECT title,anh,anh_thumb,link,ordernum,status FROM tblslider WHERE id={$id}";
			$result_id=mysqli_query($dbc,$query_id);
			kt_query($result_id,$query_id);
			//Kiểm tra xem ID có tồn tại không
			if(mysqli_num_rows($result_id)==1)
			{
				list($title,$anh,$anh_thumb,$link,$ordernum,$status)=mysqli_fetch_array($result_id,MYSQLI_NUM);
			}
			else
			{
				$message="<p class='required'>ID video không tồn tại</p>";	
			}
		?>
		<form name="frmadd_slider" method="POST" enctype="multipart/form-data">
			<?php 
				if(isset($message))
				{
					echo $message;
				}
			?>
			<h3>Sửa Slider: <?php if(isset($title)){ echo $title;} ?></h3>
			<div class="form-group">
				<label>Title</label>
				<input type="text" name="title" value="<?php if(isset($title)){ echo $title;} ?>" class="form-control" placeholder="Title">
				<?php 
					if(isset($errors) && in_array('title',$errors))
					{
						echo "<p class='required'>Bạn chưa nhập tiêu đề</p>";
					}
				?>
			</div>
			<div class="form-group">
				<label>Ảnh đại diện</label>
				<p><img width="100" src="../<?php echo $anh; ?>"></p>
				<input type="hidden" name="anh_hi" value="<?php echo $anh; ?>">
				<input type="hidden" name="anhthumb_hi" value="<?php echo $anh_thumb; ?>">
				<input type="file" name="img" value="">
			</div>
			<div class="form-group">
				<label>Link</label>
				<input type="text" value="<?php if(isset($link)){ echo $link;} ?>" name="link" class="form-control" placeholder="Link slider">				
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
<?php ob_flush(); ?>