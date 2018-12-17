<?php ob_start(); ?>
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
		if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)))
		{
			$id=$_GET['id'];
		}
		else
		{
			header('Location: list_user.php');
			exit();
		}
		if($_SERVER['REQUEST_METHOD']=='POST')
		{			
			$matkhaumoi=md5(trim($_POST['matkhaumoi']));
			if(trim($_POST['matkhaumoi'])!=trim($_POST['matkhaumoire']))
			{
				$message="<p class='required'>Mật khẩu mới không giống nhau</p>";
			}
			else
			{
				$query_up="UPDATE tbluser
						   SET matkhau='{$matkhaumoi}'
						   WHERE
						   		id={$id}";
				$results_up=mysqli_query($dbc,$query_up);
				kt_query($results_up,$query_up);
				if(mysqli_affected_rows($dbc)==1)
				{
					$message="<p style='color:green;'>Reset mật khẩu thành công</p>";
				}
				else
				{
					$message="<p class='required'>Reset mật khẩu không thành công</p>";	
				}
			}			
		}
		$query_id="SELECT taikhoan FROM tbluser WHERE id={$id}";
		$results_id=mysqli_query($dbc,$query_id);
		kt_query($results_id,$query_id);
		//Kiểm tra xem ID có tồn tại không
		if(mysqli_num_rows($results_id)==1)
		{
			list($taikhoan)=mysqli_fetch_array($results_id,MYSQLI_NUM);				
		}
		else
		{
			$message="<p class='required'>ID user không tồn tại</p>";
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
			<h3>Reset mật khẩu</h3>
			<div class="form-group">
				<label>Tài khoản</label>
				<input type="text" name="taikhoan" value="<?php if(isset($taikhoan)){ echo $taikhoan;} ?>" class="form-control" disabled="true">
			</div>			
			<div class="form-group">
				<label>Mật khẩu mới</label>
				<input type="password" name="matkhaumoi" value="" class="form-control">
			</div>
			<div class="form-group">
				<label>Xác nhận mật khẩu mới</label>
				<input type="password" name="matkhaumoire" value="" class="form-control">
			</div>
			<input type="submit" name="submit" value="Reset mật khẩu" class="btn btn-primary">
		</form>
	</div>
</div>
<?php include('includes/footer.php') ?>
<?php ob_flush(); ?>