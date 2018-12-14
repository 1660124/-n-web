<?php 
$CI=&get_instance();
$CI->load->model('site/site_model');
$danhmucft_h=$CI->site_model->gettablename_all('tbldanhmucbaiviet','id,danhmucbaiviet,phai,ordernum,status','','phai',1);
$tinfoo=$CI->site_model->gettablename_all('tbltintuc','id,title,foo,ordernum,status',7,'foo',1);
$footer_cty=$CI->site_model->gettablename('tblthongtincongty','tencongty,diachi,dienthoai,dienthoai2,dienthoai3,dienthoai4,dienthoai5,fb,gcong,youtube','');
?>
<div class="container wrapper" id="mecta">
    <div id="menu_fot">
        <ul>
            <li><a href="<?php echo base_url(); ?>" title="Trang chủ">Trang chủ</a></li>
            <?php 
                if($danhmucft_h->num_rows()>0)
                {
                    foreach ($danhmucft_h->result() as $itemdanhmucft_h) 
                    {
                    ?>
                    <li><a href="<?php echo site_url(LocDau($itemdanhmucft_h->danhmucbaiviet).'-bv'.$itemdanhmucft_h->id.'.html'); ?>" title="<?php echo $itemdanhmucft_h->danhmucbaiviet; ?>"><?php echo $itemdanhmucft_h->danhmucbaiviet; ?></a></li>
                    <?php
                    }
                    $danhmucft_h->free_result();
                }
            ?>                    
            <li><a href="<?php echo site_url('lien-he.html'); ?>" title="Liên hệ">Liên hệ</a></li>
        </ul>
    </div>
</div>
<div id="bg_cuoi_ft">
    <div class="container wrapper" style="padding-top:7px;">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 box_ft_item" style="border-left:none;">                 
                    <div class="box_ft_item_top">
                        <p>Liên hệ&nbsp;<?php echo $footer_cty->tencongty; ?></p>
                    </div>
                    <div class="box_ft_item_main">
                        <p><strong style="color:#fff200;">Điện thoại di động</strong></p>
                        <p>Địa chỉ:&nbsp;<?php echo $footer_cty->diachi; ?></p>
                        <p style="color:#3aca4e;font-size:11px;">Hỗ trợ sửa chữa phần cứng:&nbsp;<?php echo $footer_cty->dienthoai;?></p>                        
                        <p style="color:#3aca4e;">Hỗ trợ sửa lỗi phần mềm:&nbsp;<?php echo $footer_cty->dienthoai2; ?></p> 
                        <p style="color:#3aca4e;">Hỗ trợ mua trả góp:&nbsp;<?php echo $footer_cty->dienthoai3; ?></p> 
                        <p style="color:#3aca4e;">Sim số thẻ cào:&nbsp;<?php echo $footer_cty->dienthoai4; ?></p> 
                        <p style="color:#3aca4e;">Khiếu nại chất lượng, dịch vụ:&nbsp;<?php echo $footer_cty->dienthoai5; ?></p>   
                    </div>
                
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 box_ft_item"> 
                
                    <div class="box_ft_item_top">
                        <p>Thông tin về điện thoại di động</p>
                    </div>
                    <div class="box_ft_item_main">
                        <?php 
                            if ($tinfoo->num_rows()>0) 
                            {
                            ?>
                            <ul>
                                <?php 
                                    foreach ($tinfoo->result() as $itemtinfoo) 
                                    {
                                    ?>
                                    <li><a href="<?php echo site_url(LocDau($itemtinfoo->title).'-'.$itemtinfoo->id.'.html'); ?>" title="<?php echo $itemtinfoo->title; ?>"><?php echo $itemtinfoo->title; ?></a></li>
                                    <?php
                                    }
                                    $tinfoo->free_result();
                                ?>
                            </ul>
                            <?php
                            }
                        ?>                        
                    </div>
                
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 box_ft_item">                 
                    <div class="box_ft_item_top">
                        <p>Sản phẩm nổi bật</p>
                    </div>
                    <div class="box_ft_item_main">
                        <?php 
                            $this->db->where('status',0);
                            $this->db->where('noibat',1);
                            $this->db->order_by('ordernum','desc');
                            $this->db->order_by('id','desc');
                            $this->db->select('id,ten,noibat,ordernum,status');
                            $this->db->limit(7);
                            $sqlsanphamnoibat=$this->db->get('tblsanpham');
                            if($sqlsanphamnoibat->num_rows()>0)
                            {
                            ?>
                            <ul>
                                <?php 
                                    foreach ($sqlsanphamnoibat->result() as $itemsanphamnoibat) 
                                    {
                                    ?>
                                    <li><a href="<?php echo site_url(LocDau($itemsanphamnoibat->ten).'-sp'.$itemsanphamnoibat->id.'.html'); ?>" title="<?php echo $itemsanphamnoibat->ten; ?>"><?php echo $itemsanphamnoibat->ten; ?></a></li> 
                                    <?php
                                    }
                                    $sqlsanphamnoibat->free_result();
                                ?>                                                            
                            </ul>
                            <?php 
                            }
                        ?>
                    </div>
                
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 box_ft_item">                 
                    <div class="box_ft_item_top">
                        <p style="padding-bottom:10px;">Liên kết</p>
                    </div>
                    <div class="box_ft_item_main">
                        <div id="fb_ib">
                            <a href="<?php echo $footer_cty->fb; ?>" target="_blank" title="Facebook">Facebook</a>
                        </div> 
                        <div id="g_ib">
                            <a href="<?php echo $footer_cty->gcong; ?>" target="_blank" title="G+">G+</a>
                        </div> 
                        <div id="youtube_ib">
                            <a href="<?php echo $footer_cty->youtube; ?>" target="_blank" title="Youtube">Youtube</a>
                        </div>    
                    </div>
                
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
// create the back to top button
$('body').prepend('<a href="#" class="back-to-top">Back to Top</a>');

var amountScrolled = 300;

$(window).scroll(function() {
    if ( $(window).scrollTop() > amountScrolled ) {
        $('a.back-to-top').fadeIn('slow');
    } else {
        $('a.back-to-top').fadeOut('slow');
    }
});

$('a.back-to-top, a.simple-back-to-top').click(function() {
    $('html, body').animate({
        scrollTop: 0
    }, 700);
    return false;
});
</script>      