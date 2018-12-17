<?php include('../inc/myconnect.php'); ?>
<?php include('../inc/function.php'); ?>
<?php include('includes/header.php'); ?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<h3>Danh sách User</h3>
		<table class="table table-hover">
			<thead>	
				<tr>
					<th>Mã</th>
					<th>Tài khoản</th>
					<th>Họ tên</th>
					<th>Điện thoại</th>
					<th>Email</th>
					<th>Địa chỉ</th>
					<th>Trạng thái</th>
					<th>Reset pas</th>					
					<th>Edit</th>					
					<th>Delete</th>					
				</tr>
			</thead>
			<tbody>
				<?php
					//đặt số bản ghi cần hiện thị
					$limit=4;
					//Xác định vị trí bắt đầu
					if(isset($_GET['s']) && filter_var($_GET['s'],FILTER_VALIDATE_INT,array('min_range'=>1)))
					{
						$start=$_GET['s'];
					} 	
					else
					{
						$start=0;
					}	
					if(isset($_GET['p']) && filter_var($_GET['p'],FILTER_VALIDATE_INT,array('min_range'=>1)))
					{
						$per_page=$_GET['p'];
					} 
					else
					{
						//Nếu p không có, thì sẽ truy vấn CSDL để tìm xem có bao nhiêu page
						$query_pg="SELECT COUNT(id) FROM tbluser";
						$results_pg=mysqli_query($dbc,$query_pg);
						kt_query($results_pg,$query_pg);
						list($record)=mysqli_fetch_array($results_pg,MYSQLI_NUM);						
						//Tìm số trang bằng cách chia số dữ liệu cho số limit	
						if($record > $limit)
						{
							$per_page=ceil($record/$limit);
						}
						else
						{
							$per_page=1;
						}
					}					
					$query="SELECT id,taikhoan,hoten,dienthoai,email,diachi,status 
						FROM tbluser ORDER BY id DESC LIMIT {$start},{$limit}";
					$results=mysqli_query($dbc,$query);
					kt_query($results,$query);
					while($user=mysqli_fetch_array($results,MYSQLI_ASSOC))
					{
					?>
					<tr>
						<td><?php echo $user['id']; ?></td>
						<td><?php echo $user['taikhoan']; ?></td>
						<td><?php echo $user['hoten']; ?></td>
						<td><?php echo $user['dienthoai']; ?></td>
						<td><?php echo $user['email']; ?></td>
						<td><?php echo $user['diachi']; ?></td>
						<td>
							<?php 
							if($user['status']==1)
							{
								echo 'Kích hoạt';
							}	
							else
							{
								echo 'Chưa được kích hoạt';
							}						
							?>
						</td>	
						<td><a href="reset_user.php?id=<?php echo $user['id']; ?>"><img width="16" src="../images/reset_mk.jpg"></a></td>					
						<td><a href="edit_user.php?id=<?php echo $user['id']; ?>"><img width="16" src="../images/icon_edit.png"></a></td>						
						<td><a href="delete_user.php?id=<?php echo $user['id'];?>" onclick="return confirm('Bạn có thực sự muốn xóa không');"><img width="16" src="../images/icon_delete.png"></a></td>
					</tr>
					<?php		
					}

				?>				
			</tbody>
		</table>
		<?php 
			echo "<ul class='pagination'>";
			if($per_page > 1)
			{
				$current_page=($start/$limit) + 1;
				//Nếu không phải là trang đầu thì hiện thị trang trước
				if($current_page !=1)
				{
					echo "<li><a href='list_user.php?s=".($start - $limit)."&p={$per_page}'>Back</a></li>";
				}
				//hiện thị những phần còn lại của trang
				for ($i=1; $i <= $per_page ; $i++) 
				{ 
					if($i != $current_page)
					{
						echo "<li><a href='list_user.php?s=".($limit *($i - 1))."&p={$per_page}'>{$i}</a></li>";
					}
					else
					{
						echo "<li class='active'><a>{$i}</a></li>";
					}
				}
				//Nếu không phải trang cuối thì hiện thị nút next
				if($current_page != $per_page)
				{
					echo "<li><a href='list_user.php?s=".($start + $limit)."&p={$per_page}'>Next</a></li>";	
				}
			}
			echo "</ul>";
		?>		
	</div>
</div>
<?php include('includes/footer.php'); ?>