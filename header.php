<?php 
$CI=&get_instance();
$CI->load->model('site/site_model');
$header_cty=$CI->site_model->gettablename('tblthongtincongty','tencongty,yahoo,diachi,dienthoai,dienthoai2,dienthoai3,dienthoai4,dienthoai5,hotline,logo','');
$header_cty_mb=$CI->site_model->gettablename('tblthongtincongty','tencongty,yahoo,diachi,dienthoai,dienthoai2,dienthoai3,dienthoai4,dienthoai5,hotline,logo','');
$danhmuctop=$CI->site_model->gettablename_all('tbldanhmucbaiviet','id,danhmucbaiviet,top,ordernum,status','','top',1);
$danhmuctopmb=$CI->site_model->gettablename_all('tbldanhmucbaiviet','id,danhmucbaiviet,top,ordernum,status','','top',1);
$danhmucsptrai=$CI->site_model->gettablename_all('tbldanhmucsanpham','id,danhmucsanpham,ordernum,status',1,'trai',1);
$danhmucsptraimb=$CI->site_model->gettablename_all('tbldanhmucsanpham','id,danhmucsanpham,ordernum,status','','',1);
?>
<div id="bg_top">
    <div class="container wrapper"> 
        <div class="row"> 
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div id="menu_top_t">                        
                    <p id="diachi_h1"><span><?php echo $header_cty->diachi; ?></p>
                    <p id="diachi_h2"><?php echo $header_cty->dienthoai5; ?></p>
                    <div class="clearfix"></div>
                </div> 
                <div id="menu_top_r"> 
                    <ul>
                        <?php 
                        if(isset($_SESSION['id']))
                        {
                            $this->db->where('id',$_SESSION['id']);
                            $user=$this->db->get('tbluser');
                            if($user->num_rows()>0)
                            {
                                $user=$user->row();
                                ?>
                                <li><p><strong>Xin chào:</strong>&nbsp;<span><?php echo $user->nguoidang; ?></span>,<a href="<?php echo site_url('thanhvien/thoat'); ?>" title="Thoát">Thoát</a></p></li>
                                <?php
                            }
                        }
                        else
                        {
                        ?>
                        <li><a href="<?php echo site_url('dang-ky.html'); ?>" title="Đăng ký">Đăng ký</a></li>
                        <li><a href="<?php echo site_url('dang-nhap.html'); ?>" title="Đăng nhập">Đăng nhập</a></li>
                        <?php    
                        }
                        ?>                        
                    </ul> 
                </div>             
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>   
</div> 
<div class="clearfix"></div>    
<div id="bg_header">
    <div class="container1">        
            <div id="header_mb">                
                    <div id="vien_top_mb">
                        <ul>
                            <?php 
                                if(isset($_SESSION['id']))
                                {
                                    $this->db->where('id',$_SESSION['id']);
                                    $usermb=$this->db->get('tbluser');
                                    if($usermb->num_rows()>0)
                                    {
                                        $usermb=$usermb->row();
                                        ?>
                                        <li><p><strong>Xin chào:</strong>&nbsp;<span><?php echo $usermb->nguoidang; ?></span>,<a href="<?php echo site_url('thanhvien/thoat'); ?>" title="Thoát">Thoát</a></p></li>
                                        <?php
                                    }
                                }
                                else
                                {
                                ?>
                                <li><a href="<?php echo site_url('dang-ky.html'); ?>" title="Đăng ký">Đăng ký</a></li>
                                <li><a href="<?php echo site_url('dang-nhap.html'); ?>" title="Đăng nhập">Đăng nhập</a></li>
                                <?php    
                                }
                            ?>                            
                            <li><p style="color:red;"><?php echo $header_cty_mb->dienthoai5;?></p></li>
                        </ul>
                        <div class="clearfix"></div>                        
                    </div>
                    <div id="logo_mb">
                        <a href="<?php echo base_url(); ?>" title="<?php echo $header_cty_mb->tencongty; ?>"><img title="<?php echo $header_cty_mb->tencongty; ?>" alt="<?php echo $header_cty_mb->tencongty; ?>" src="<?php echo $header_cty_mb->logo; ?>"></a>
                    </div>
                    <div id="thanhtoan_mb">
                        <a href="<?php echo site_url('sanpham/giohang'); ?>" title="Giỏ hàng">Giỏ hàng (<span>
                        <?php 
                        if(isset($_SESSION['sanpham']))
                        {
                            if($_SESSION['sanpham']!='')
                            {
                                $str=$_SESSION['sanpham'];
                                $num=explode(",",$str);
                                $html=count($num);
                                echo $html;
                            }
                            else
                            {
                                echo '0';
                            }
                        }
                        else
                        {
                            echo '0';
                        }
                    ?>
                        </span>)</a>
                    </div>
                    <div class="clearfix"></div>
                    <div id="menu_mb" style="position: relative;z-index:10000;">
                            <div id="zt-mainmenu">
                                <div class="zt-navigation hidden-desktop">
                                    <div id="search1">
                                        <form name="frmsearch2" method="POST" action="<?php echo site_url('site/search'); ?>">                            
                                            <input type="text" name="ten" value="" />
                                            <input type="submit" name="submit" value="" />                          
                                        </form>
                                        <div class="clear"></div>
                                    </div>       
                                    <a class="btn-navbar hidden-desktop collapsed" id="mobile-button"></a>                    
                                </div>
                                <div class="zt-drillmenu-inner hidden-desktop" id="tat" style="display: none;">
                                    <div class="navbar">
                                        <div class="menusys_drill collapse">
                                            <ul id="zo2-drilldown-menu" class="nav-drilldown">
                                                <li><a href="<?php echo base_url(); ?>"><span class="menusys_name">Trang chủ</span></a></li>
                                                <?php 
                                                    if ($danhmuctopmb->num_rows()>0) 
                                                    {
                                                        $demmnmn=1;
                                                        foreach ($danhmuctopmb->result() as $itemdanhmuctopmb) 
                                                        {                                                            
                                                        ?>
                                                        <li><a href="<?php echo site_url(LocDau($itemdanhmuctopmb->danhmucbaiviet).'-bv'.$itemdanhmuctopmb->id.'.html'); ?>" title="<?php echo $itemdanhmuctopmb->danhmucbaiviet; ?>"><span class="menusys_name"><?php echo $itemdanhmuctopmb->danhmucbaiviet; ?></span></a>
                                                            <?php 
                                                                $this->db->where('status',0);
                                                                $this->db->where('danhmucbaiviet',$itemdanhmuctopmb->id);
                                                                $this->db->order_by('ordernum','desc');
                                                                $this->db->order_by('id','desc');
                                                                $sqldanhmucbaivietcap2mb=$this->db->get('tbldanhmucbaiviet2');
                                                                if($sqldanhmucbaivietcap2mb->num_rows()>0)
                                                                {
                                                                ?>
                                                                <ul>
                                                                    <?php 
                                                                        foreach ($sqldanhmucbaivietcap2mb->result() as $itemdanhmucbaivietcap2mb) 
                                                                        {
                                                                        ?>
                                                                        <li><a href="<?php echo site_url(BoDau($itemdanhmucbaivietcap2mb->danhmucbaivietcap2).'-bv2'.$itemdanhmucbaivietcap2mb->id.'.html'); ?>" title="<?php echo $itemdanhmucbaivietcap2mb->danhmucbaivietcap2; ?>"><span class="menusys_name"><?php echo $itemdanhmucbaivietcap2mb->danhmucbaivietcap2; ?></span></a></li>
                                                                        <?php
                                                                        }
                                                                        $sqldanhmucbaivietcap2mb->free_result();
                                                                    ?>                                                                    
                                                                </ul>
                                                                <?php 
                                                                }
                                                            ?>
                                                        </li>
                                                        <?php
                                                        if ($demmnmn==1) 
                                                        {                                                    
                                                            if($danhmucsptraimb->num_rows()>0)
                                                            {                                                                
                                                                foreach ($danhmucsptraimb->result() as $itemdanhmucsptraimb) 
                                                                {
                                                                ?>
                                                                <li><a title="<?php echo $itemdanhmucsptraimb->danhmucsanpham; ?>" href="<?php echo site_url(LocDau($itemdanhmucsptraimb->danhmucsanpham).'-dm'.$itemdanhmucsptraimb->id.'.html'); ?>"><span class="menusys_name"><?php echo $itemdanhmucsptraimb->danhmucsanpham; ?></span></a>
                                                                    <?php 
                                                                        $this->db->where('status','0');
                                                                        $this->db->where('danhmucsanpham',$itemdanhmucsptraimb->id);
                                                                        $this->db->order_by('ordernum','desc');
                                                                        $this->db->order_by('id','desc');
                                                                        $sqldanhmucsanphamcap2mb=$this->db->get('tbldanhmucsanpham2');
                                                                        if($sqldanhmucsanphamcap2mb->num_rows()>0)
                                                                        {
                                                                        ?>
                                                                        <ul>
                                                                            <?php 
                                                                                foreach ($sqldanhmucsanphamcap2mb->result() as $itemdanhmucsanphamcap2mb) 
                                                                                {
                                                                                ?>
                                                                                <li><a href="<?php echo site_url(BoDau($itemdanhmucsanphamcap2mb->danhmucsanphamcap2).'-dm2'.$itemdanhmucsanphamcap2mb->id.'.html'); ?>" title="<?php echo $itemdanhmucsanphamcap2mb->danhmucsanphamcap2; ?>"><span class="menusys_name"><?php echo $itemdanhmucsanphamcap2mb->danhmucsanphamcap2; ?></span></a></li>    
                                                                                <?php
                                                                                }
                                                                                $sqldanhmucsanphamcap2mb->free_result();
                                                                            ?>                                                                            
                                                                        </ul>
                                                                        <?php    
                                                                        }
                                                                    ?>                                                                    
                                                                </li>
                                                                <?php
                                                                }
                                                                $danhmucsptraimb->free_result();                                                                    
                                                            }                                                            
                                                        }
                                                        $demmnmn++;
                                                        }
                                                        $danhmuctopmb->free_result();
                                                    }
                                                ?>
                                                <li><a title="Phụ kiện" href="<?php echo site_url('lien-he.html'); ?>"><span class="menusys_name">Liên hệ</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>                
            </div>        
    </div>
    <div class="container wrapper"> 
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">  
                <div id="header">
                    <div id="logo"><a href="<?php echo base_url(); ?>" title="<?php echo $header_cty->tencongty; ?>">
                        <img alt="<?php echo $header_cty->tencongty; ?>" title="<?php echo $header_cty->tencongty; ?>" alt="<?php echo $header_cty->tencongty; ?>" src="<?php echo $header_cty->logo; ?>"></a>
                    </div> 
                    <div id="search">
                        <form name="frmsearch" method="POST" action="<?php echo site_url('site/search'); ?>">
                            <input type="text" name="ten" value="" placeholder="Nhập từ khóa tìm kiếm">
                            <input type="submit" name="submit" value="">
                        </form>
                        <div class="product_detail_social" style="border-bottom:none;margin-top:10px;">
                            <ul>
                                <li><div class="fb-like" data-href="<?php echo base_url(); ?>" data-width="450" data-layout="button_count" data-show-faces="false" data-send="false"></div></li>
                                <li><a href="https://twitter.com/share" class="twitter-share-button" data-url="<?php echo base_url(); ?>">Tweet</a></li>
                                <li><div class="g-plusone" data-size="medium" data-annotation="inline" data-width="300" data-href="<?php echo base_url(); ?>"></div></li>
                                <div class="clearfix"></div>
                            </ul>
                            <script type="text/javascript" orig_index="16">!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>
                            <script src="https://apis.google.com/js/plusone.js" type="text/javascript" orig_index="17">
                                {lang: 'vi'}
                            </script>
                        </div>
                    </div>
                    <div id="thanhtoan_t">
                        <a href="<?php echo site_url('sanpham/giohang'); ?>" title="Giỏ hàng">Giỏ hàng&nbsp;(<span>
                    <?php 
                        if(isset($_SESSION['sanpham']))
                        {
                            if($_SESSION['sanpham']!='')
                            {
                                $str=$_SESSION['sanpham'];
                                $num=explode(",",$str);
                                $html=count($num);
                                echo $html;
                            }
                            else
                            {
                                echo '0';
                            }
                        }
                        else
                        {
                            echo '0';
                        }
                    ?>
                        </span>)</a>       
                    </div> 
                    <div id="map_h">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3733.6578291654937!2d105.91912501444843!3d20.642799406218963!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135c927c1713407%3A0x1a1456c049e09d8c!2zU2hvcCDEkGnhu4duIFRob-G6oWkgMlQuTW9iaWxlLVRoYW5oIFR1eeG7g24!5e0!3m2!1svi!2s!4v1462412043929" width="210" height="125" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>                   
                    <div id="menu">
                        <div id="menu_l"></div>
                        <div id="menu_c">                            
                            <ul id="menu_top">
                                <?php 
                                    $this->db->where('status','desc');
                                    $this->db->where('trai',1);
                                    $this->db->order_by('ordernum','desc');
                                    $this->db->order_by('id','desc');
                                    $this->db->limit(2);
                                    $sqldanhmucdanhmucmn=$this->db->get('tbldanhmucsanpham');
                                    if ($sqldanhmucdanhmucmn->num_rows()>0) 
                                    {
                                       foreach ($sqldanhmucdanhmucmn->result() as $itemdanhmucdanhmucmn) 
                                       {
                                       ?>
                                       <li><a href="<?php echo site_url(LocDau($itemdanhmucdanhmucmn->danhmucsanpham).'-dm'.$itemdanhmucdanhmucmn->id.'.html'); ?>" title="<?php echo $itemdanhmucdanhmucmn->danhmucsanpham; ?>"><?php echo $itemdanhmucdanhmucmn->danhmucsanpham; ?></a>
                                            <?php 
                                                $this->db->where('status',0);
                                                $this->db->where('danhmucsanpham',$itemdanhmucdanhmucmn->id);
                                                $this->db->order_by('ordernum','desc');
                                                $this->db->order_by('id','desc');
                                                $sqldanhmucsanpham2=$this->db->get('tbldanhmucsanpham2');
                                                if ($sqldanhmucsanpham2->num_rows()>0) 
                                                {
                                                    ?>
                                                    <ul class="sub_menu">
                                                    <?php
                                                    foreach ($sqldanhmucsanpham2->result() as $itemdanhmucsanpham2) 
                                                    {
                                                    ?>
                                                    <li><a href="<?php echo site_url(LocDau($itemdanhmucsanpham2->danhmucsanphamcap2).'-dm2'.$itemdanhmucsanpham2->id.'.html'); ?>" title="<?php echo $itemdanhmucsanpham2->danhmucsanphamcap2; ?>"><?php echo $itemdanhmucsanpham2->danhmucsanphamcap2;?></a></li>
                                                    <?php
                                                    }
                                                    $sqldanhmucsanpham2->free_result();
                                                    ?>
                                                    </ul>
                                                    <?php
                                                }
                                            ?>                                                                                    
                                       </li>
                                       <?php 
                                       }
                                       $sqldanhmucdanhmucmn->free_result();
                                    }
                                ?>                                                            
                                <?php 
                                    if($danhmuctop->num_rows()>0)
                                    {
                                    $demtthome=1;                                
                                    foreach ($danhmuctop->result() as $itemdanhmuctop) 
                                    {
                                    ?>
                                    <li><a href="<?php echo site_url(LocDau($itemdanhmuctop->danhmucbaiviet).'-bv'.$itemdanhmuctop->id.'.html'); ?>" title="<?php echo $itemdanhmuctop->danhmucbaiviet; ?>"><?php echo $itemdanhmuctop->danhmucbaiviet; ?></a>
                                        <?php 
                                            $danhmuctop_sub=$CI->site_model->gettablename_all('tbldanhmucbaiviet2','id,danhmucbaiviet,danhmucbaivietcap2,ordernum,status','','danhmucbaiviet',$itemdanhmuctop->id);
                                            if($danhmuctop_sub->num_rows()>0)
                                            {
                                            ?>
                                            <ul class="sub_menu">
                                                <?php 
                                                    foreach ($danhmuctop_sub->result() as $itemdanhmuctop_sub) 
                                                    {
                                                    ?>
                                                    <li>
                                                        <a href="<?php echo site_url(BoDau($itemdanhmuctop_sub->danhmucbaivietcap2).'-bv2'.$itemdanhmuctop_sub->id.'.html'); ?>" title="<?php echo $itemdanhmuctop_sub->danhmucbaivietcap2; ?>"><?php echo $itemdanhmuctop_sub->danhmucbaivietcap2; ?></a>                                                    
                                                        <?php
                                                        $danhmuctop_sub3=$CI->site_model->gettablename_all('tbldanhmucbaiviet3','id,danhmucbaivietcap2,danhmucbaivietcap3,ordernum,status','','danhmucbaivietcap2',$itemdanhmuctop_sub->id);
                                                        if ($danhmuctop_sub3->num_rows()>0) 
                                                        {
                                                        ?>
                                                        <ul class="sub_menu_hai">
                                                            <?php 
                                                                foreach ($danhmuctop_sub3->result() as $itemdanhmuctop_sub3) 
                                                                {
                                                                ?>
                                                                <li><a href="<?php echo site_url(BoDau($itemdanhmuctop_sub3->danhmucbaivietcap3).'-bv3'.$itemdanhmuctop_sub3->id.'.html'); ?>" title="<?php echo $itemdanhmuctop_sub3->danhmucbaivietcap3; ?>"><?php echo $itemdanhmuctop_sub3->danhmucbaivietcap3; ?></a></li>
                                                                <?php
                                                                }
                                                                $danhmuctop_sub3->free_result();
                                                            ?>                                                                
                                                        </ul>
                                                        <?php
                                                        }
                                                        ?>                                                            
                                                    </li>
                                                    <?php
                                                    }
                                                    $danhmuctop_sub->free_result();
                                                ?>
                                            </ul>
                                            <?php 
                                            }
                                        ?>
                                    </li> 
                                    <?php 
                                    if($demtthome==2)
                                    {
                                        $this->db->where('status','desc');
                                        $this->db->where('trai',1);
                                        $this->db->order_by('ordernum','desc');
                                        $this->db->order_by('id','desc');
                                        $this->db->limit(4);
                                        $sqldanhmucdanhmuc2mn=$this->db->get('tbldanhmucsanpham');
                                        if ($sqldanhmucdanhmuc2mn->num_rows()>0) 
                                        {
                                            $demsptr=1;
                                            foreach ($sqldanhmucdanhmuc2mn->result() as $itemdanhmucdanhmuc2mn) 
                                            {
                                                if($demsptr>2)
                                                {
                                                ?>
                                                <li><a href="<?php echo site_url(LocDau($itemdanhmucdanhmuc2mn->danhmucsanpham).'-dm'.$itemdanhmucdanhmuc2mn->id.'.html'); ?>" title="<?php echo $itemdanhmucdanhmuc2mn->danhmucsanpham; ?>"><?php echo $itemdanhmucdanhmuc2mn->danhmucsanpham; ?></a>
                                                    <?php 
                                                        $this->db->where('status',0);
                                                        $this->db->where('danhmucsanpham',$itemdanhmucdanhmuc2mn->id);
                                                        $this->db->order_by('ordernum','desc');
                                                        $this->db->order_by('id','desc');
                                                        $sqldanhmucsanpham3=$this->db->get('tbldanhmucsanpham2');
                                                        if ($sqldanhmucsanpham3->num_rows()>0) 
                                                        {
                                                            ?>
                                                            <ul class="sub_menu">
                                                            <?php
                                                            foreach ($sqldanhmucsanpham3->result() as $itemdanhmucsanpham3) 
                                                            {
                                                            ?>
                                                            <li><a href="<?php echo site_url(LocDau($itemdanhmucsanpham3->danhmucsanphamcap2).'-dm2'.$itemdanhmucsanpham3->id.'.html'); ?>" title="<?php echo $itemdanhmucsanpham3->danhmucsanphamcap2; ?>"><?php echo $itemdanhmucsanpham3->danhmucsanphamcap2;?></a></li>
                                                            <?php
                                                            }
                                                            $sqldanhmucsanpham3->free_result();
                                                            ?>
                                                            </ul>
                                                            <?php
                                                        }
                                                    ?>       
                                                </li>
                                                <?php    
                                                }
                                                $demsptr++;    
                                            }
                                            $sqldanhmucdanhmuc2mn->free_result();
                                        }                                    
                                    }  
                                    if($demtthome==3)
                                    {
                                        $this->db->where('status','desc');
                                        $this->db->where('trai',1);
                                        $this->db->order_by('ordernum','desc');
                                        $this->db->order_by('id','desc');
                                        $this->db->limit(5);
                                        $sqldanhmucdanhmuc3mn=$this->db->get('tbldanhmucsanpham');
                                        if ($sqldanhmucdanhmuc3mn->num_rows()>0) 
                                        {
                                            $demsptr3=1;
                                            foreach ($sqldanhmucdanhmuc3mn->result() as $itemdanhmucdanhmuc3mn) 
                                            {
                                                if ($demsptr3>4) 
                                                {
                                                ?>
                                                <li><a href="<?php echo site_url(LocDau($itemdanhmucdanhmuc3mn->danhmucsanpham).'-dm'.$itemdanhmucdanhmuc3mn->id.'.html'); ?>" title="<?php echo $itemdanhmucdanhmuc3mn->danhmucsanpham; ?>"><?php echo $itemdanhmucdanhmuc3mn->danhmucsanpham; ?></a>
                                                    <?php 
                                                        $this->db->where('status',0);
                                                        $this->db->where('danhmucsanpham',$itemdanhmucdanhmuc3mn->id);
                                                        $this->db->order_by('ordernum','desc');
                                                        $this->db->order_by('id','desc');
                                                        $sqldanhmucsanpham4=$this->db->get('tbldanhmucsanpham2');
                                                        if ($sqldanhmucsanpham4->num_rows()>0) 
                                                        {
                                                            ?>
                                                            <ul class="sub_menu">
                                                            <?php
                                                            foreach ($sqldanhmucsanpham4->result() as $itemdanhmucsanpham4) 
                                                            {
                                                            ?>
                                                            <li><a href="<?php echo site_url(LocDau($itemdanhmucsanpham4->danhmucsanphamcap2).'-dm2'.$itemdanhmucsanpham4->id.'.html'); ?>" title="<?php echo $itemdanhmucsanpham4->danhmucsanphamcap2; ?>"><?php echo $itemdanhmucsanpham4->danhmucsanphamcap2;?></a></li>
                                                            <?php
                                                            }
                                                            $sqldanhmucsanpham4->free_result();
                                                            ?>
                                                            </ul>
                                                            <?php
                                                        }
                                                    ?>       
                                                </li>
                                                <?php
                                                }
                                                $demsptr3++;    
                                            }
                                            $sqldanhmucdanhmuc3mn->free_result();   
                                        }                                    
                                    }                                     
                                    $demtthome++;
                                    }
                                    $danhmuctop->free_result();
                                    ?>                                 
                                    <?php 
                                    }
                                ?>
                                <li><a href="<?php echo site_url('lien-he.html'); ?>" title="Liên hệ">Liên hệ</a></li>                                                                                                           
                            </ul>
                            <div class="clearfix"></div>    
                        </div>
                        <div id="menu_r"></div>
                        <div class="clearfix"></div>
                    </div>                               
                </div>             
            </div>
        </div> 

    </div>
</div>  
    <script type="text/javascript">
        jQuery(document).ready(function(){                            
            jQuery('#menu_top > li').hover(function(){
                jQuery(this).children('.sub_menu').css('display','block');                       
                },function(){
                    jQuery(this).children('.sub_menu').css('display','none');    
            });
            jQuery('.sub_menu > li').hover(function(){
                jQuery(this).children('.sub_menu_hai').css('display','block');                       
                },function(){
                    jQuery(this).children('.sub_menu_hai').css('display','none');    
            });
             jQuery('#danhmuc_left').hover(function(){
                jQuery('#danhmuc_left_sub').css('display','block');                       
                },function(){
                    jQuery('#danhmuc_left_sub').css('display','none');    
            });
            jQuery("body").append(jQuery("<div><dt/><dd/></div>").attr("id", "progress"));
                jQuery("#progress").width(100+ "%");
                jQuery("#progress").width("101%").delay(800).fadeOut(400, function() {
                jQuery(this).remove();
            });      
        });
        </script>     