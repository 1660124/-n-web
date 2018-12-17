<style type="text/css">
.required
{
	 color:red;
}
</style>
<?php include('includes/header.php') ?>
<div class="row">
	<?php 
		include('../inc/myconnect.php');
		include('../inc/function.php');
		if($_SERVER['REQUEST_METHOD']=='POST')
		{
			$matkhaucu=$_POST['matkhaucu'];
			$matkhaumoi=md5(trim($_POST['matkhaumoi']));
			$query="SELECT id,matkhau FROM tbluser WHERE matkhau=md5('{$matkhaucu}') AND id={$_SESSION['uid']}";
			$results=mysqli_query($dbc,$query);
			kt_query($results,$query);
			if(mysqli_num_rows($results)==1)
			{
				if(trim($_POST['matkhaumoi'])!=trim($_POST['matkhaumoire']))
				{
					$message="<p class='required'>Mật khẩu mới không giống nhau</p>";
				}
				else
				{
					$query_up="UPDATE tbluser
							   SET matkhau='{$matkhaumoi}'
							   WHERE
							   		id={$_SESSION['uid']}";
					$results_up=mysqli_query($dbc,$query_up);
					kt_query($results_up,$query_up);
					if(mysqli_affected_rows($dbc)==1)
					{
						$message="<p style='color:green;'>Đổi mật khẩu thành công</p>";
					}
					else
					{
						$message="<p class='required'>Đổi mật khẩu không thành công</p>";	
					}
				}
			}
			else
			{
				$message="<p class='required'>Mật khẩu cũ không đúng</p>";
			}
		}
	?>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<?php 
			if(isset($message))
			{
				echo $message;
			}
		?>
		<form name="frmdoimatkhau" method="POST">
			<h3>Đổi mật khẩu</h3>
			<div class="form-group">
				<label>Tài khoản</label>
				<input type="text" name="taikhoan" value="<?php echo $_SESSION['taikhoan']; ?>" class="form-control" disabled="true">
			</div>
			<div class="form-group">
				<label>Mật khẩu cũ</label>
				<input type="password" name="matkhaucu" value="" class="form-control">
			</div>
			<div class="form-group">
				<label>Mật khẩu mới</label>
				<input type="password" name="matkhaumoi" value="" class="form-control">
			</div>
			<div class="form-group">
				<label>Xác nhận mật khẩu mới</label>
				<input type="password" name="matkhaumoire" value="" class="form-control">
			</div>
			<input type="submit" name="submit" value="Đổi mật khẩu" class="btn btn-primary">
		</form>
	</div>
</div>
<?php include('includes/footer.php') ?>