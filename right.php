<?php 
$CI=&get_instance();
$CI->load->model('site/site_model');
$fanpage=$CI->site_model->gettablename('tblthongtincongty','fb','');
$danhmucphukienc1=$CI->site_model->gettablename_all('tbldanhmucphukien','','','','');
$quangcaoright=$CI->site_model->gettablename_all('tblquangcao','id,title,link,anh,phai,ordernum,status','','phai',1);
if(isset($pk))
{
?>
<div class="box_right">
	<div class="box_right_top">
		<div class="box_right_top_l">
			<p>Phụ kiện</p>
		</div>	
		<div class="box_right_top_r">
		</div>
		<div class="clearfix"></div>	
	</div>
	<div class="box_right_main">
		<?php 
			if ($danhmucphukienc1->num_rows()>0) 
			{
			?>
			<ul id="danhmucphukien">
				<?php
					foreach ($danhmucphukienc1->result() as $itemdanhmucphukienc1) 
					{
					?>
					<li><a href="<?php echo site_url(LocDau($itemdanhmucphukienc1->danhmucphukien).'-pk'.$itemdanhmucphukienc1->id.'.html'); ?>" title="<?php echo $itemdanhmucphukienc1->danhmucphukien; ?>"><i style="color:red;font-size:12px;" class="glyphicon glyphicon-triangle-bottom"></i>&nbsp;<?php echo $itemdanhmucphukienc1->danhmucphukien; ?></a></li>								
					<?php
					$this->db->where('status',0);
					$this->db->where('danhmucphukien',$itemdanhmucphukienc1->id);
					$this->db->order_by('ordernum','desc');
					$this->db->order_by('id','desc');
					$danhmucphukienc2=$this->db->get('tbldanhmucphukien2');
					if($danhmucphukienc2->num_rows()>0)
					{
						foreach ($danhmucphukienc2->result() as $itemdanhmucphukienc2) 
						{
						?>
						<li><a style="padding-left:20px;" href="<?php echo site_url(BoDau($itemdanhmucphukienc2->danhmucphukiencap2).'-pk2'.$itemdanhmucphukienc2->id.'.html'); ?>" title="<?php echo $itemdanhmucphukienc2->danhmucphukiencap2; ?>"><?php echo $itemdanhmucphukienc2->danhmucphukiencap2; ?></a></li>
						<?php
						}
						$danhmucphukienc2->free_result();
					}
					}
					$danhmucphukienc1->free_result();
				?>				
			</ul>
			<?php
			}
		?>		
	</div>
</div>
<?php 
}
?>
<div class="box_right">
	<div class="box_right_main">
		<?php 
			if($quangcaoright->num_rows()>0)
			{
				foreach ($quangcaoright->result() as $itemquangcaoright) 
				{
				?>
				<p class="quangcao_item_title"><?php echo $itemquangcaoright->title; ?></p>
				<div class="quangcao_item">			
					<a href="<?php echo $itemquangcaoright->link; ?>" target="_blank" title="<?php echo $itemquangcaoright->title; ?>"><img title="<?php echo $itemquangcaoright->title; ?>" alt="<?php echo $itemquangcaoright->title; ?>" src="<?php echo $itemquangcaoright->anh; ?>"></a>
				</div>	
				<?php
				}
				$quangcaoright->free_result();
			}
		?>			
	</div>
	<div class="clearfix"></div>
</div>
<?php 
if(isset($pk))
{}
else
{
?>
<div class="box_right">
	<div class="box_right_top">
		<div class="box_right_top_l">
			<p>Facebook</p>
		</div>	
		<div class="box_right_top_r">
		</div>
		<div class="clearfix"></div>	
	</div>
	<div class="box_right_main">
		<div id="fanpage">
			<div class="fb-like-box" data-href="<?php echo $fanpage->fb; ?>" data-width="192" data-height="185" data-show-faces="true" data-stream="false" data-border-color="#ffffff" data-header="false"></div>	
		</div>
	</div>
</div>
<?php 
}
?>		