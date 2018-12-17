<?php include('includes/header.php') ?>
<?php include('../inc/myconnect.php') ?>
<?php include('../inc/function.php') ?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
		<h3>Danh sách ảnh slider</h3>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Mã</th>
					<th>Tiêu đề</th>
					<th>Ảnh</th>
					<th>Link</th>
					<th>Thứ tự</th>
					<th>Trạng thái</th>
					<th>Edit</th>
					<th>Xóa</th>
				</tr>
			</thead>
			<tbody>
				<?php 
					$query="SELECT * FROM tblslider ORDER BY ordernum DESC";
					$result=mysqli_query($dbc,$query);
					while ($slider=mysqli_fetch_array($result,MYSQLI_ASSOC)) 
					{
					?>
					<tr>
						<td><?php echo $slider['id']; ?></td>
						<td><?php echo $slider['title']; ?></td>
						<td><img width="80" src="../<?php echo $slider['anh']; ?>"/></td>
						<td><?php echo $slider['link']; ?></td>
						<td><?php echo $slider['ordernum']; ?></td>
						<td>
							<?php 
								if($slider['status']==1)
								{
									echo 'Hiện thị';
								}
								else
								{
									echo 'Không hiện thị';
								}
							?>
						</td>
						<td><a href="edit_slider.php?id=<?php echo $slider['id']; ?>"><img width="16" src="../images/icon_edit.png"></a></td>
						<td><a href="delete_slider.php?id=<?php echo $slider['id']; ?>" onclick="return confirm('Bạn có thực sự muốn xóa không');"><img width="16" src="../images/icon_delete.png"></a></td>
					</tr>
					<?php
					}
				?>
			</tbody>
		</table>
	</div>
</div>
<?php include('includes/footer.php') ?>