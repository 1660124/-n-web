<style type="text/css">
.required
{
	color:red;
}
</style> 
<script language="javascript">
	function checkall(class_name,obj)
	{
		var items = document.getElementsByClassName(class_name);
		if(obj.checked == true)
		{
			for(i=0;i<items.length;i++)
				items[i].checked = true;
		}
		else
		{
			for(i=0;i<items.length;i++)
				items[i].checked = false;	
		}
	}
</script>
<?php include('includes/header.php') ?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<?php 
			include('../inc/myconnect.php');
			include('../inc/function.php');
			if($_SERVER['REQUEST_METHOD']=='POST')
			{
				$errors=array();
				if(empty($_POST['taikhoan']))
				{
					$errors[]='taikhoan';
				}
				else
				{
					$taikhoan=$_POST['taikhoan'];
				}
				if(empty($_POST['matkhau']))
				{
					$errors[]='matkhau';
				}
				else
				{
					$matkhau=md5(trim($_POST['matkhau']));
				}
				if(trim($_POST['matkhau'])!=trim($_POST['matkhaure']))
				{
					$errors[]='matkhaure';	
				}
				if(empty($_POST['hoten']))
				{
					$errors[]='hoten';
				}
				else
				{
					$hoten=$_POST['hoten'];
				}
				if(empty($_POST['dienthoai']))
				{
					$errors[]='dienthoai';
				}
				else
				{
					$dienthoai=$_POST['dienthoai'];
				}
				if(filter_var(($_POST['email']),FILTER_VALIDATE_EMAIL)==TRUE)
				{
					$email=mysqli_real_escape_string($dbc,$_POST['email']);
				}
				else
				{
					$errors[]='email';
				}
				if(empty($_POST['diachi']))
				{
					$errors[]='diachi';
				}
				else
				{
					$diachi=$_POST['diachi'];
				}
				$status=$_POST['status'];
				if(empty($errors))
				{
					$query="SELECT taikhoan FROM tbluser WHERE taikhoan='{$taikhoan}'";
					$results=mysqli_query($dbc,$query);kt_query($results,$query);
					$query2="SELECT email FROM tbluser WHERE email='{$email}'";
					$results2=mysqli_query($dbc,$query2);kt_query($results2,$query2);
					if(mysqli_num_rows($results)==1)
					{
						$message="<p class='required'>Tài khoản đã tồn tại, yêu cầu bạn nhập tài khoản khác</p>";
					}
					elseif(mysqli_num_rows($results2)==1)
					{
						$message="<p class='required'>Email đã tồn tại, yêu cầu bạn nhập email khác</p>";	
					}
					else
					{
						$chrole=$_POST['chrole'];
						$countcheckrole=count($chrole);
						$del_role='';
						for ($i=0; $i < $countcheckrole; $i++) 
						{ 
							$del_role=$del_role.','.$chrole[$i];	
						}						
						$query_in="INSERT INTO tbluser(taikhoan,matkhau,hoten,dienthoai,email,diachi,role,status)
						VALUES('{$taikhoan}','{$matkhau}','{$hoten}','{$dienthoai}','{$email}','{$diachi}','{$del_role}',{$status})";
						$results_in=mysqli_query($dbc,$query_in);
						kt_query($results_in,$query_in);
						if(mysqli_affected_rows($dbc)==1)
						{
							echo "<p style='color:green;'>Thêm mới thành công</p>";
						}
						else
						{
							echo "<p class='required'>Thêm mới không thành công</p>";	
						}
					}
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
			<h3>Thêm mới User</h3>
			<div class="form-group">
				<label>Tài khoản</label>
				<input type="text" name="taikhoan" value="<?php if(isset($_POST['taikhoan'])){ echo $_POST['taikhoan'];} ?>" class="form-control" placeholder="Tài khoản">				
				<?php 
					if(isset($errors) && in_array('taikhoan',$errors))
					{
						echo "<p class='required'>Tài khoản không để trống</p>";
					}
				?>
			</div>	
			<div class="form-group">
				<label>Mật khẩu</label>
				<input type="password" name="matkhau" value="" class="form-control" placeholder="">				
				<?php 
					if(isset($errors) && in_array('matkhau',$errors))
					{
						echo "<p class='required'>Mật khẩu không để trống</p>";
					}
				?>
			</div>	
			<div class="form-group">
				<label>Xác nhận tật khẩu</label>
				<input type="password" name="matkhaure" value="" class="form-control" placeholder="">				
				<?php 
					if(isset($errors) && in_array('matkhaure',$errors))
					{
						echo "<p class='required'>Mật khẩu không giống nhau</p>";
					}
				?>
			</div>	
			<div class="form-group">
				<label>Họ tên</label>
				<input type="text" name="hoten" value="<?php if(isset($_POST['hoten'])){ echo $_POST['hoten'];} ?>" class="form-control" placeholder="Họ tên">				
				<?php 
					if(isset($errors) && in_array('hoten',$errors))
					{
						echo "<p class='required'>Họ tên không để trống</p>";
					}
				?>
			</div>	
			<div class="form-group">
				<label>Điện thoại</label>
				<input type="text" name="dienthoai" value="<?php if(isset($_POST['dienthoai'])){ echo $_POST['dienthoai'];} ?>" class="form-control" placeholder="Điện thoại">				
				<?php 
					if(isset($errors) && in_array('dienthoai',$errors))
					{
						echo "<p class='required'>Điện thoại không để trống</p>";
					}
				?>
			</div>	
			<div class="form-group">
				<label>Email</label>
				<input type="text" name="email" value="<?php if(isset($_POST['email'])){ echo $_POST['email'];} ?>" class="form-control" placeholder="Email">				
				<?php 
					if(isset($errors) && in_array('email',$errors))
					{
						echo "<p class='required'>Email không hợp lệ</p>";
					}
				?>
			</div>	
			<div class="form-group">
				<label>Địa chỉ</label>
				<input type="text" name="diachi" value="<?php if(isset($_POST['diachi'])){ echo $_POST['diachi'];} ?>" class="form-control" placeholder="Địa chỉ">				
				<?php 
					if(isset($errors) && in_array('diachi',$errors))
					{
						echo "<p class='required'>Địa chỉ không để trống</p>";
					}
				?>
			</div>	
			<div class="form-group">
				<label>Chọn quyền</label>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
						<input type="checkbox" name="chkfull" onclick="checkall('chrole', this)">
						<label>Full quyền</label>
					</div>
				</div>
				<div class="row">
					<?php 
						foreach ($mang as $mang_add) 
						{
						?>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
							<div class="role_item">
								<input type="checkbox" name="chrole[]" class="chrole" value="<?php echo $mang_add['title'].'-'.$mang_add['link_themmoi'].'-'.$mang_add['link_list'].'-'.$mang_add['link_edit'].'-'.$mang_add['link_delete']; ?>">
								<label><?php echo $mang_add['title']; ?></label>
							</div>
						</div>
						<?php
						}
					?>
				</div>
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