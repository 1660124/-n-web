<?php 
$CI=&get_instance();
$CI->load->model('site/site_model');
$danhmucspl=$CI->site_model->gettablename_all('tbldanhmucsanpham','id,danhmucsanpham,trai,ordernum,status','','trai',1);
?>
<div class="box_left" id="danhmuc_omem">
	<?php 
		if($danhmucspl->num_rows()>0)	
		{
		?>
		<ul id="danhmuc_left">
			<?php 
				foreach ($danhmucspl->result() as $itemdanhmucspl) 
				{
				?>
				<li><a href="<?php echo site_url(LocDau($itemdanhmucspl->danhmucsanpham).'-dm'.$itemdanhmucspl->id.'.html'); ?>" title="<?php echo $itemdanhmucspl->danhmucsanpham; ?>"><?php echo $itemdanhmucspl->danhmucsanpham; ?></a>
					<?php 
						$danhmucspl2=$CI->site_model->gettablename_all('tbldanhmucsanpham2','id,danhmucsanpham,danhmucsanphamcap2,ordernum,status','','danhmucsanpham',$itemdanhmucspl->id);
						if($danhmucspl2->num_rows()>0)
						{	
						?>
						<ul class="danhmuc_left_sub">
							<?php 
								foreach ($danhmucspl2->result() as $itemdanhmucspl2) 
								{
								?>
								<li><a href="<?php echo site_url(BoDau($itemdanhmucspl2->danhmucsanphamcap2).'-dm2'.$itemdanhmucspl2->id.'.html'); ?>" title="<?php echo $itemdanhmucspl2->danhmucsanphamcap2; ?>"><?php echo $itemdanhmucspl2->danhmucsanphamcap2; ?></a></li>
								<?php
								}
								$danhmucspl2->free_result();
							?>
						</ul>
						<?php 
						}
					?>	
				</li>
				<?php
				}
				$danhmucspl->free_result();
			?>			
		</ul>
		<?php	
		}
	?>	
	<script type="text/javascript">
         jQuery(document).ready(function(){                            
            jQuery('#danhmuc_left > li').hover(function(){
                jQuery(this).children('.danhmuc_left_sub').css('display','block');                       
                },function(){
                    jQuery(this).children('.danhmuc_left_sub').css('display','none');    
            });            
          });  
    </script>
</div>