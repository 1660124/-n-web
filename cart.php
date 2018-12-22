<?php 
include('includes/header.php');
if(isset($_POST['submit']))
{
	foreach ($_POST['qty'] as $key => $value) 
	{
		if(($value == 0) and (is_numeric($value)))
		{
			unset($_SESSION['cart'][$key]);
		}
		elseif(($value >0 ) and (is_numeric($value)))
		{
			$_SESSION['cart'][$key]=$value;
		}
	}
	header("Location:cart.php");	
}
include('includes/slider.php');
?>
<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" id="left">
		<?php include('includes/left.php');?>	
	</div>
	<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9" id="center">
		<div class="box_center">
			<div class="box_center_top">
				<div class="box_center_top_l"><a href="">Giỏ hàng</a></div>
				<div class="box_center_top_r"></div>
				<div class="clearfix"></div>
			</div>
			<div class="box_center_main">
				<br>
				<?php 
					$ok=1;
					if(isset($_SESSION['cart']))
					{
						foreach ($_SESSION['cart'] as $k => $v) 
						{
							if(isset($k))
							{
								$ok=2;
							}
						}	
					}
					if($ok == 2)
					{
					?>
					<form method="POST" action="cart.php">
						<div id="order">
							<table>
								<tr>
									<th>Tên</th>
									<th>Ảnh</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Thành tiên</th>
									<th>Xóa</th>
								</tr>
								<?php 
									foreach ($_SESSION['cart'] as $key => $value) 
									{
										$item[]=$key;
									}
									$str=implode(",",$item);
									$query="SELECT * FROM tblsanpham WHERE id in ($str)";
									$results=mysqli_query($dbc,$query);
									kt_query($results,$query);
									$tongtien=0;
									while($cart=mysqli_fetch_array($results,MYSQLI_ASSOC))
									{	
										if(isset($_SESSION['cart'][$cart['id']])!=0)
										{									
										?>
											<tr>
												<td><?php echo $cart['ten']; ?></td>
												<td><img src="<?php echo $cart['anh']; ?>" width="150"></td>
												<td><?php echo number_format($cart['gia'],0,'.','.').'&nbsp;'.$cart['donvitinh']; ?></td>
												<td><input type="text" name="qty[<?php echo $cart['id']; ?>]" size="5" value="<?php echo $_SESSION['cart'][$cart['id']]; ?>"></td>
												<td><?php echo number_format($_SESSION['cart'][$cart['id']]*$cart['gia'],0,'.','.').'&nbsp;'.$cart['donvitinh']; ?></td>
												<td><a href="delete_cart.php?id=<?php echo $cart['id']; ?>"><img src="images/icon_delete.png" width="16"></a></td>
											</tr>
											<?php
											$tongtien+=$_SESSION['cart'][$cart['id']]*$cart['gia'];																		
										}
									}
								?>
								<tr>
									<td colspan="3"><input type="submit" name="submit" value="Cập nhật giỏ hàng">,<a href="delete_cart.php?id=0">Xóa bỏ giỏ hàng</a></td>
									<td colspan="3">Tổng tiền:&nbsp;<?php echo number_format($tongtien,0,'.','.'); ?>&nbsp;đ</td>
								</tr>
								<tr>
									<td colspan="6">
										<a href="sanpham.php" id="tt_mh">Tiếp tục mua hàng</a>
										<a href="thanhtoan.php" id="tt_or">Thanh toán</a>
										<div class="clearfix"></div>
									</td>
								</tr>
							</table>
						</div>
					</form>
					<?php	
					}
					else
					{
						echo 'Bạn không có sản phẩm nào trong giỏ';
					}
				?>
			</div>
		</div>
	</div>
</div>
<?php
include('includes/footer.php');
?>