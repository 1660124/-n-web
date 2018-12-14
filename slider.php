<?php 
$CI=&get_instance();
$CI->load->model('site/site_model');
$chamsoc=$CI->site_model->gettablename('tblthongtincongty','hotline','');
$slider=$CI->site_model->gettablename_all('tblslider','','','trai',1);
$tinmoih=$CI->site_model->gettablename_all('tbltintuc','',10,'','');
$slider_r=$CI->site_model->gettablename_all('tblslider','','','phai',1);
$slider_r2=$CI->site_model->gettablename_all('tblslider','','','phai',1);
?>
<div id="slider_left">
    <?php 
        if($slider->num_rows()>0)
        {
        ?>
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <?php 
                    foreach ($slider->result() as $itemslider) 
                    {
                    ?>
                    <a href="<?php echo $itemslider->link; ?>" target="_blank" title="<?php echo $itemslider->title; ?>"><img src="<?php echo $itemslider->anh; ?>" alt="<?php echo $itemslider->title; ?>" border="0"/> </a>
                    <?php
                    }
                    $slider->free_result();
                ?>                                                                
            </div> 
        </div> 
        <?php 
        }
    ?>    
</div>
<div id="slider_right">  
    <div id="full-page-example">
        <div id="demo-full-page">
            <div id="full-page_slider" style="position:relative;">
                <div id="tutt"></div>
                <?php 
                   if($slider_r->num_rows()>0)
                   {
                    ?>
                    <ul>
                        <?php 
                            foreach ($slider_r->result() as $itemslider_r) 
                            {
                            ?>
                            <li><a href="<?php echo $itemslider_r->link; ?>" target="_blank" title="<?php echo $itemslider_r->title; ?>"><img src="<?php echo $itemslider_r->anh; ?>" title="<?php echo $itemslider_r->title; ?>" alt="<?php echo $itemslider_r->title; ?>"/></a></li>                           
                            <?php
                            }
                            $slider_r->free_result();
                        ?>                        
                    </ul>
                    <?php 
                    }
                ?>
            </div>
            <div id="sm_submenu">
                <?php 
                    if($slider_r2->num_rows()>0)
                    {
                        $demso=0;
                        foreach ($slider_r2->result() as $itemslider_r2) 
                        {
                        ?>
                        <div style="position:relative;" class="sm_submenu-item" data-index="<?php echo $demso; ?>">
                            <div class="tutt_nho"></div>
                            <img src="<?php echo $itemslider_r2->anh_thumb; ?>" title="<?php echo $itemslider_r2->title; ?>" alt="<?php echo $itemslider_r2->title; ?>" />
                        </div> 
                        <?php 
                        $demso++;  
                        }
                    }
                ?>                            
            </div>
        </div>
    </div>
</div> 
<div class="clearfix"></div>
<div id="chamsoc">
    <div id="chamsoc_left">
        <p>Chăm sóc khách hàng<span><?php echo $chamsoc->hotline; ?></span></p>
    </div>    
    <div id="chamsoc_right">
        <?php 
            if($tinmoih->num_rows()>0)
            {
            ?>
            <ul id="fade">
                <?php 
                    foreach ($tinmoih->result() as $itemtinmoih) 
                    {
                    ?>
                    <li>
                        <a href="<?php echo site_url(LocDau($itemtinmoih->title).'-'.$itemtinmoih->id.'.html'); ?>" title="<?php echo $itemtinmoih->title; ?>"><?php echo $itemtinmoih->title; ?></a>
                        <img title="<?php echo $itemtinmoih->title; ?>" alt="<?php echo $itemtinmoih->title; ?>" src="images/new.gif">
                        <div class="clearfix"></div>
                    </li>    
                    <?php
                    }
                    $tinmoih->free_result();
                ?>                                
            </ul>
            <?php 
            }
        ?>
    </div>
    <div class="clearfix"></div>
</div>