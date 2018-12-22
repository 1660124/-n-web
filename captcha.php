<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
		<meta name='' content=''>
	</head>
	<body>
		<?php 
			$mes='notOk';
			if($_SERVER['REQUEST_METHOD']=='POST')
			{
				if($_POST['captcha']==$_SESSION['cap_code'])
				{					
					$mes='Ok';
					echo 'Mã xác nhận đúng';	
				}
				else
				{
					$mes='';
					echo 'Mã xác nhận không đúng';
				}
			}
		?>
		<form method="POST">
			<?php 
				/*if($mes=='Ok')
				{
					echo 'Mã xác nhận đúng';					
				}
				else
				{					
					echo 'Mã xác nhận không đúng';
				}*/
			?>
			<div id="form">
				<table border="0">
					<tr>
						<td><input type="text" name="captcha" id="capcha"></td>
						<td><img src="captcha_code.php"></td>
					</tr>
					<tr>
						<td><input type="submit" name="submit" value="Nhập"></td>
						<td></td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>