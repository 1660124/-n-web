<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" lang="vi" xml:lang="vi">
<?php
echo header('Content-type: text/html; charset=utf-8');
?>
<head>
    <?php 
        $offset = 60 * 15;
        header("Expires: " . gmdate("D, d M Y H:i:s", time() + $offset) . " GMT");
        header("Cache-Control: max-age=$offset, must-revalidate"); 
    ?>
	<meta http-equiv="content-type" content="text/html" charset="utf-8" />	
    <base href="<?php echo base_url(); ?>" />
	<title>
        <?php
        $CI = &get_instance();
        $CI->load->model('site/site_model');
        $data_select='title,description,keywords';
        $meta = $CI->site_model->gettablename('tblmeta',$data_select,'');        
        if(isset($header_title))
        {
            echo $header_title;
        }
        else
        {
	       echo $meta->title;
        }
    ?>
    </title>
    <meta name="description" content="<?php
    if(isset($description))
    {
        echo $description;
    }
    else
    {
        echo $meta->description;
    }?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="author" content="thanhtuyenmobile"/>
    <meta name="copyright" content="thanhtuyenmobile" />
    <meta name="robots" content="index,follow" />
    <meta name="geo.region" content="VN-63" />
    <meta name="geo.position" content="20.638258;105.925927" />
    <meta name="ICBM" content="20.638258, 105.925927" />
    <meta http-equiv="content-language" content="vi"/>    
    <meta name="dc.description" content="<?php echo $meta->description; ?>">
    <meta name="dc.keywords" content="<?php echo $meta->keywords; ?>">
    <meta name="dc.subject" content="<?php echo $meta->title; ?>">
    <meta name="dc.created" content="2015-12-04">
    <meta name="dc.publisher" content="<?php echo $meta->title; ?>">
    <meta name="dc.rights.copyright" content="thanhtuyenmobile">
    <meta name="dc.creator.name" content="thanhtuyenmobile">
    <meta name="dc.creator.email" content="sales@hpsoft.vn">
    <meta name="dc.identifier" content="http://thanhtuyenmobile/">
    <meta name="dc.language" content="vi-VN">
    <link href="<?php echo base_url().'feed'; ?>" rel="alternate" type="application/rss+xml" title="RSS 2.0">
    <link href="<?php echo base_url().'feed'; ?>" rel="alternate" type="application/atom+xml" title="Atom 1.0">
    <meta name="keywords" content="<?php 
    if(isset($keyword))
    {
        echo $keyword;    
    }
    else
    {
        echo $meta->keywords;    
    }     
    ?>"/>    
    <?php
        function catchuoi($chuoi,$gioihan){
        if(strlen($chuoi)<=$gioihan)
        {
            return $chuoi;
        }
        else{
        if(strpos($chuoi," ",$gioihan) > $gioihan){
            $new_gioihan=strpos($chuoi," ",$gioihan);
            $new_chuoi = substr($chuoi,0,$new_gioihan)."...";
            return $new_chuoi;
        }
        $new_chuoi = substr($chuoi,0,$gioihan)."...";
            return $new_chuoi;
        }
    }
    ?>     
    <?php 
    if(isset($ctp))
    {
        $this->db->where('id',$ctp);
        $baivietfb=$this->db->get('tbltintuc')->row();
        ?>
        <meta property="og:url" itemprop="url" content="<?php echo site_url(LocDau($baivietfb->title).'-'.$baivietfb->id.'.html'); ?>" />
        <meta property="og:title" content="<?php echo $baivietfb->ten; ?>"/>
        <meta property="og:image" content="<?php echo base_url().$baivietfb->anh; ?>" />
        <?php
    }    
    ?>    
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/menu.css">
    <?php 
        if(isset($pk))
        {}
        else{
        ?>   
        <link rel="stylesheet" type="text/css" href="css/default.css">
        <link rel="stylesheet" type="text/css" href="css/nivo-slider.css"> 
        <link type="text/css"  rel="stylesheet" href="css/smslider.css" />
        <?php 
        }
     ?>               
    <link href="css/skin.css" rel="stylesheet" type="text/css" />    
    <link href="css/default1.css" rel="stylesheet" type="text/css" />        
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script> 
    <?php 
        if(isset($pk))
        {}
        else{
            if(isset($pkc))
            {}
        else
        {
    ?>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="js/jquery.smslider.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            var $smSlider = $('#full-page_slider');

            $smSlider.smSlider({
                pagination : false,
                subMenu    : true,
                flexible   : true,
                autoPlay : true
            })
        });
    </script> 
    <?php 
    }
    ?>       
    <script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
    <?php 
        if(isset($pkc))
        {}
    else
    {
    ?>
    <script type="text/javascript" src="js/ticker00.js"></script>
      <script type="text/javascript">
        $(document).ready(function(){
            $('#fade').list_ticker({
                speed:10000,
                effect:'fade'
            });
        })
    </script>  
    <?php
        } 
        }
    ?>              
    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js" type="text/javascript"></script>
    <script src="js/zo2-uncompressed.js" type="text/javascript"></script>
    <script type="text/javascript">
         jQuery(document).ready(function(){
            jQuery("#mobile-button").click(function(){
                jQuery("#tat").toggle();
                if(jQuery("#tat").is(":hidden")){
                    jQuery("#tat").css('display','none');                            
                    jQuery(this).addClass('collapsed');
                }
                else
                {
                    jQuery("#tat").css('display','block');
                    jQuery(this).removeClass('collapsed');                            
                }        
            }); 
        });   
    </script>    
    <script type="text/javascript">
        $ZO2(document).ready(function() {
            /* Mega Menu script block */
                        var megas = $ZO2('div[class="menusub_mega"]');
            var _tmp  = Array();

            $ZO2.each(megas, function(key, item) {
                var id = $ZO2(item).attr('id').split("_");
                if(id[2] != null) {
                    var smart = "_" + id[1] + "_" + id[2];
                    if($ZO2.inArray(smart, _tmp)) {
                        $ZO2.merge(_tmp, Array(smart));
                        ZTMenu(smart, "megamenu_close", 'show',
                            '350',
                            'hide',
                            '350',
                            'ltr');
                    }
                }
            });

            /* Add/remove class hover when mouse enter/mouse leave */
            $ZO2.each($ZO2('ul#menusys_mega li'), function(i, item) {
                $ZO2(item).mouseenter(function() {
                    $ZO2(item).addClass('hover');
                }).mouseleave(function() {
                        $ZO2(item).removeClass('hover');
                    });
            });
            
            /* Fancy Menu script block */
            
            /* Accordion menu */
            $ZO2(document).ready(function() {
                $ZO2("#zo2-drilldown-menu").mtAccordionMenu({
                    accordion:true,
                    speed: 500,
                    closedSign: 'collapse',
                    openedSign: 'expand',
                    mouseType: 0,
                    easing: 'easeInOutBack'
                });
            });

        });
    </script>
    <script type="text/javascript" src="js/tooltip.js"></script> 
    <?php 
        if(isset($pkc))
        {
    ?>    
    <script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
    <script type="text/javascript">
            jQuery(document).ready(function() {                                 
                jQuery('.first-and-second-carousel').jcarousel({
                   auto:3,
                   scroll:1,
                   animation:'slow',
                    wrap: 'circular',
                    animation:1000,                 
                });
                
            });        
        </script>
        <?php 
        }
        ?>                
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>   				                       
    <?php 
        $magoogleantic=$this->db->get('tblthongtincongty')->row();        
        echo $magoogleantic->googleantic;
    ?> 
    <script type="text/javascript">
        function addorder(id,soluong){
            jQuery.ajax({
                cache: false,
                type:"POST",
                    url:"<?PHP echo site_url('sanpham/addorder_pro/');?>",
                    data: {id : id,soluong : soluong},
                    success:function(html){
                        alert("Sản phẩm đã thêm vào giỏ hàng");
                        window.location.reload();
                    }
            });                             
        }   
    </script>           
</head>
<body>
 <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<?php 
$this->db->where('status',0);
$this->db->where('bannerphai',1);
$this->db->order_by('ordernum','desc');
$this->db->order_by('id','desc');
$this->db->limit(1);
$sqlbannerphai=$this->db->get('tblquangcao');
if($sqlbannerphai->num_rows()>0)
{
    $bannerphai=$sqlbannerphai->row();
?>
<div id="divAdRight" style="display: block; position: fixed; top:30px;">
    <a href="<?php echo $bannerphai->link; ?>" title="<?php echo $bannerphai->title; ?>" rel="nofollow"><img src="<?php echo $bannerphai->anh; ?>" width="150" alt="<?php echo $bannerphai->title; ?>" /></a>
</div>
<?php 
}
$this->db->where('status',0);
$this->db->where('bannertrai',1);
$this->db->order_by('ordernum','desc');
$this->db->order_by('id','desc');
$this->db->limit(1);
$sqlbannertrai=$this->db->get('tblquangcao');
if($sqlbannertrai->num_rows()>0)
{
    $bannertrai=$sqlbannertrai->row();
?>  
<div id="divAdLeft" style="display: block; position: fixed; top:30px;">
    <a href="<?php echo $bannertrai->link; ?>" rel="nofollow" title="<?php echo $bannertrai->title; ?>"><img src="<?php echo $bannertrai->anh; ?>" width="150" alt="<?php echo $bannertrai->title; ?>" /></a>
</div>
<?php 
}
?>
<script>
    function FloatTopDiv()
    {
        startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBannerW-LeftAdjust , startLY = TopAdjust+80;
        startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80;
        var d = document;
        function ml(id)
        {
            var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
            el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};
            el.x = startRX;
            el.y = startRY;
            return el;
        }
        function m2(id)
        {
            var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
            e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};
            e2.x = startLX;
            e2.y = startLY;
            return e2;
        }
        window.stayTopLeft=function()
        {
            if (document.documentElement && document.documentElement.scrollTop)
                var pY =  document.documentElement;
            else if (document.body)
                var pY =  document.body;
            if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else {startLY = TopAdjust;startRY = TopAdjust;};
            ftlObj.y += (pY+startRY-ftlObj.y)/16;
            ftlObj.sP(ftlObj.x, ftlObj.y);
            ftlObj2.y += (pY+startLY-ftlObj2.y)/16;
            ftlObj2.sP(ftlObj2.x, ftlObj2.y);
            setTimeout("stayTopLeft()", 1);
        }
        ftlObj = ml("divAdRight");
        //stayTopLeft();
        ftlObj2 = m2("divAdLeft");
        stayTopLeft();
    }
    function ShowAdDiv()
    {
        var objAdDivRight = document.getElementById("divAdRight");
        var objAdDivLeft = document.getElementById("divAdLeft");
        if (document.body.clientWidth < 1000)
        {
            objAdDivRight.style.display = "none";
            objAdDivLeft.style.display = "none";
        }
        else
        {
            objAdDivRight.style.display = "block";
            objAdDivLeft.style.display = "block";
            FloatTopDiv();
        }
    }
</script>
<script>
document.write("<script type='text/javascript' language='javascript'>MainContentW = 1000;LeftBannerW = 150;RightBannerW = 150;LeftAdjust = 15;RightAdjust = 5;TopAdjust = 10;ShowAdDiv();window.onresize=ShowAdDiv;;<\/script>");
</script>      
    <?php $this->load->view('includes/header') ?>        
    <div class="container wrapper"> 
        <?php 
            if(isset($pk) || isset($pkc))
            {}
            else{
            ?>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div id="slider_all">                                            
                    <?php 
                        $this->load->view('includes/slider');
                    ?> 
                    <div class="clearfix"></div>                                                            
                    </div>        
                </div>
            </div> 
            <?php 
            }
        ?>                                             
                <div id="bg">
                    <div class="row">
                        <div <?php if(isset($taitai)){ ?>style="margin-top:0;padding-right:15px;"<?php } ?> class="<?php if(isset($taitai)){ ?>col-lg-12 col-md-12 col-sm-12 col-xs-12<?php }else{ ?>col-lg-9 col-md-9 col-sm-9 col-xs-12<?php } ?>">                 
                            <div id="center">
                                <?php $this->load->view($main_content)?>  
                            </div>                  
                        </div><!--End #left-->
                        <?php 
                            if(isset($taitai))
                            {}
                            else
                            {
                            ?>  
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" id="right1">   
                                <div id="right">                             
                                <?php $this->load->view('includes/right') ?>
                                </div>
                            </div><!--End #right-->
                            <?php 
                            }
                        ?>
                    </div>                    
                    <div class="clearfix"></div>
                </div>                                                                                                                                
    </div>  
    <div id="bg_footer">                
        <?php $this->load->view('includes/footer') ?>                  
    </div>
</body>
</html>