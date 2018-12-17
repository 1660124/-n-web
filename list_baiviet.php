<?php include('../inc/myconnect.php'); ?>
<?php include('../inc/function.php'); ?>
<?php include('includes/header.php'); 
?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<h3>Bài viết</h3>
		<table class="table table-hover">
			<thead>	
				<tr>
					<th>Mã</th>
					<th>Danh mục bài viết</th>
					<th>Title</th>
					<th>Ảnh</th>
					<th>Lượt xem</th>
					<th>Ngày đăng</th>
					<th>Giờ đăng</th>
					<th>Thứ tự</th>					
					<th>Trạng thái</th>								
					<th>Edit</th>					
					<th>Delete</th>					
				</tr>
			</thead>
			<tbody>
				<?php
					//đặt số bản ghi cần hiện thị
					$limit=10;
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
						$query_pg="SELECT COUNT(id) FROM tblbaiviet";
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
					$query="SELECT id,danhmucbaiviet,title,anh,view,ngaydang,giodang,ordernum,status 
						FROM tblbaiviet ORDER BY id DESC LIMIT {$start},{$limit}";
					$results=mysqli_query($dbc,$query);
					kt_query($results,$query);
					while($baivietbv=mysqli_fetch_array($results,MYSQLI_ASSOC))
					{
					?>
					<tr>
						<td><?php echo $baivietbv['id']; ?></td>
						<td>
							<?php 
								$query_id="SELECT id,danhmucbaiviet FROM tbldanhmucbaiviet WHERE id={$baivietbv['danhmucbaiviet']}";
								$result_id=mysqli_query($dbc,$query_id);
								kt_query($result_id,$query_id);	
								if(mysqli_num_rows($result_id)==1)
								{
									list($id,$danhmucbaiviet)=mysqli_fetch_array($result_id,MYSQLI_NUM);
									echo $danhmucbaiviet;
								}								
							?>
						</td>
						<td width="15%;"><?php echo $baivietbv['title']; ?></td>
						<td><img width="100" src="../<?php echo $baivietbv['anh']; ?>"/></td>
						<td><?php echo $baivietbv['view']; ?></td>
						<td>
							<?php 
							$ngaydang_view=explode('-',$baivietbv['ngaydang']);
							echo $ngaydang_view[2].'-'.$ngaydang_view[1].'-'.$ngaydang_view[0]; 
							?>
						</td>
						<td><?php echo $baivietbv['giodang']; ?></td>
						<td><?php echo $baivietbv['ordernum']; ?></td>						
						<td>
							<?php 
							if($baivietbv['status']==1)
							{
								echo 'Hiện thị';
							}	
							else
							{
								echo 'Không hiện thị';
							}						
							?>
						</td>							
						<td><a href="edit_baiviet.php?id=<?php echo $baivietbv['id']; ?>"><img width="16" src="../images/icon_edit.png"></a></td>						
						<td><a href="delete_baiviet.php?id=<?php echo $baivietbv['id'];?>" onclick="return confirm('Bạn có thực sự muốn xóa không');"><img width="16" src="../images/icon_delete.png"></a></td>
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
					echo "<li><a href='list_baiviet.php?s=".($start - $limit)."&p={$per_page}'>Back</a></li>";
				}
				//hiện thị những phần còn lại của trang
				for ($i=1; $i <= $per_page ; $i++) 
				{ 
					if($i != $current_page)
					{
						echo "<li><a href='list_baiviet.php?s=".($limit *($i - 1))."&p={$per_page}'>{$i}</a></li>";
					}
					else
					{
						echo "<li class='active'><a>{$i}</a></li>";
					}
				}
				//Nếu không phải trang cuối thì hiện thị nút next
				if($current_page != $per_page)
				{
					echo "<li><a href='list_baiviet.php?s=".($start + $limit)."&p={$per_page}'>Next</a></li>";	
				}
			}
			echo "</ul>";			
		?>		
	</div>
</div>
<?php include('includes/footer.php'); ?>