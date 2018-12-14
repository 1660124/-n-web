<div class="box_center">
    <div class="box_center_top">
        <div class="box_center_top_l">
            <a href="" title="">Khuyễn mại</a>
        </div>
        <div class="box_center_top_r"></div>
        <div class="hang_right_sp">
            <div class="hang_mb">
                <select name="hangchon" class="hangchon" onchange="if(this.value != '#') window.open(this.value, '_blank');">
                    <option>--Chọn hãng--</option>
                    <?php 
                    $this->db->where('status',0);
                    $this->db->where('home',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(10);
                    $sqlhangkmm=$this->db->get('tblhang');
                    if($sqlhangkmm->num_rows()>0)
                    {
                        foreach ($sqlhangkmm->result() as $itemhangkmm) 
                        {
                        ?>
                        <option value="<?php echo site_url('sanpham/hangkm/'.$itemhangkmm->id.'/'.url_title($itemhangkmm->hang).'.html'); ?>"><?php echo $itemhangkmm->hang; ?></option>
                        <?php
                        } 
                        $sqlhangkmm->free_result();                   
                    }
                    ?>
                </select>
            </div>
            <div class="hang_desk">
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('home',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(10);
                    $sqlhangkm=$this->db->get('tblhang');
                    if($sqlhangkm->num_rows()>0)
                    {
                    ?>
                    <ul>
                        <?php 
                            foreach ($sqlhangkm->result() as $itemhangkm) 
                            {
                            ?>
                            <li><a href="<?php echo site_url('sanpham/hangkm/'.$itemhangkm->id.'/'.url_title($itemhangkm->hang).'.html'); ?>" title="<?php echo $itemhangkm->hang; ?>"><?php echo $itemhangkm->hang; ?></a></li>
                            <?php
                            }
                            $sqlhangkm->free_result();
                        ?>                                    
                    </ul>
                    <?php 
                    }
                ?>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="box_center_main">
        <div class="row">      
            <div class="sanpham_mb">                
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('khuyenmai',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(4);
                    $sqlsanphamkmmb=$this->db->get('tblsanpham');
                    if($sqlsanphamkmmb->num_rows()>0)
                    {
                        $demkmmb=1;
                        foreach ($sqlsanphamkmmb->result() as $itemsanphamkmmb) 
                        {                     
                        ?>
                        <div class="col-xs-6">
                            <div class="sanpham_item">                                
                                <a href="<?php echo site_url(LocDau($itemsanphamkmmb->ten).'-sp'.$itemsanphamkmmb->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemsanphamkmmb->ten; ?>"><img src="<?php echo $itemsanphamkmmb->anh_thumb; ?>" title="<?php echo $itemsanphamkmmb->ten; ?>" alt="<?php echo $itemsanphamkmmb->ten; ?>"></a>
                                <a href="<?php echo site_url(LocDau($itemsanphamkmmb->ten).'-sp'.$itemsanphamkmmb->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemsanphamkmmb->ten; ?>"><?php echo $itemsanphamkmmb->ten; ?></a>
                                <p>
                                    <?php 
                                        if($itemsanphamkmmb->gia==0)
                                        {
                                            echo 'Liên hệ';
                                        }
                                        else
                                        {
                                            echo number_format($itemsanphamkmmb->gia,0,'.','.').'&nbsp;'.$itemsanphamkmmb->donvitinh;
                                        }
                                    ?>
                                </p>
                            </div>
                        </div>
                        <?php
                        if($demkmmb%2==0)
                        {
                        ?>
                        <div class="clearfix"></div>
                        <?php    
                        }
                        $demkmmb++;
                        }
                        $sqlsanphamkmmb->free_result();
                    }
                ?>                
            </div>
            <div class="sanpham_desk">                
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('khuyenmai',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(4);
                    $sqlsanphamkhuyenmai=$this->db->get('tblsanpham');
                    if($sqlsanphamkhuyenmai->num_rows()>0)
                    {
                        foreach ($sqlsanphamkhuyenmai->result() as $itemsanphamkhuyenmai) 
                        {                     
                        ?>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <div class="sanpham_item" onmouseover='showtip("<div style=\"width:250px;\"><div style=\"background:#ed1c24;height:35px;line-height:35px;width:100%;line-height:35px;padding-left:10px;font-size:12px;font-weight:bold;color:#fff;\"><?php echo $itemsanphamkhuyenmai->ten; ?></div><p style=\"text-align:left;padding-top:9px;padding-left:10px;margin-bottom:0;\"><strong>Giá:</strong>&nbsp;<span style=\"color:red;\"><?php if($itemsanphamkhuyenmai->gia==0){ echo 'Liên hệ';}else{ echo number_format($itemsanphamkhuyenmai->gia,0,'.','.').'&nbsp;'.$itemsanphamkhuyenmai->donvitinh;}?></span></p><p style=\"text-align:left;padding-top:9px;padding-left:10px;margin-bottom:0;\"><strong>Bảo hành:&nbsp;</strong><?php echo $itemsanphamkhuyenmai->baohanh; ?></p><?php if(($itemsanphamkhuyenmai->khuyenmai1=='')&&($itemsanphamkhuyenmai->khuyenmai2=='')&&($itemsanphamkhuyenmai->khuyenmai3=='')&&($itemsanphamkhuyenmai->khuyenmai4=='')&&($itemsanphamkhuyenmai->khuyenmai5=='')){}else{ ?><p style=\"text-align:left;padding-top:9px;padding-left:10px;\"><strong>Khuyễn mại:&nbsp;</strong></p><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->khuyenmai1; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->khuyenmai2; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->khuyenmai3; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->khuyenmai4; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->khuyenmai5; ?></span><?php } ?><p style=\"border-top:1px solid #ddd;margin-top:10px;;text-align:left;padding-top:9px;padding-left:10px;\"><strong>Thông tin</strong></p><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->chip; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->ram; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->pin; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->hedieuhanh; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamkhuyenmai->manhinh; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;padding-bottom:10px;\"><?php echo $itemsanphamkhuyenmai->camera; ?></span></div>");' onmouseout="hidetip();">
                                <?php 
                                    if($itemsanphamkhuyenmai->khuyenmai==1)
                                    {
                                    ?>
                                    <div class="pro_gif"></div>
                                    <?php 
                                    }
                                ?>
                                <a href="<?php echo site_url(LocDau($itemsanphamkhuyenmai->ten).'-sp'.$itemsanphamkhuyenmai->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemsanphamkhuyenmai->ten; ?>"><img src="<?php echo $itemsanphamkhuyenmai->anh_thumb; ?>" title="<?php echo $itemsanphamkhuyenmai->ten; ?>" alt="<?php echo $itemsanphamkhuyenmai->ten; ?>"></a>
                                <a href="<?php echo site_url(LocDau($itemsanphamkhuyenmai->ten).'-sp'.$itemsanphamkhuyenmai->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemsanphamkhuyenmai->ten; ?>"><?php echo $itemsanphamkhuyenmai->ten; ?></a>
                                <p>
                                    <?php 
                                        if($itemsanphamkhuyenmai->gia==0)
                                        {
                                            echo 'Liên hệ';
                                        }
                                        else
                                        {
                                            echo number_format($itemsanphamkhuyenmai->gia,0,'.','.').'&nbsp;'.$itemsanphamkhuyenmai->donvitinh;
                                        }
                                    ?>
                                </p>
                            </div>
                        </div>
                        <?php
                        }
                        $sqlsanphamkhuyenmai->free_result();
                    }
                ?>
                </div>
            </div>        
        <div class="clearfix"></div>
    </div>
</div>
<div class="box_center">
    <div class="box_center_top">
        <div class="box_center_top_l">
            <a href="" title="">Hàng phổ thông</a>
        </div>
        <div class="box_center_top_r"></div>
        <div class="hang_right_sp">
            <div class="hang_mb">
                <select name="hangchon" class="hangchon" onchange="if(this.value != '#') window.open(this.value, '_blank');">
                    <option>--Chọn hãng--</option>
                    <?php 
                    $this->db->where('status',0);
                    $this->db->where('home',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(10);
                    $sqlhangptm=$this->db->get('tblhang');
                    if($sqlhangptm->num_rows()>0)
                    {
                        foreach ($sqlhangptm->result() as $itemhangptm) 
                        {
                        ?>
                        <option value="<?php echo site_url('sanpham/hangpt/'.$itemhangptm->id.'/'.url_title($itemhangptm->hang).'.html'); ?>"><?php echo $itemhangptm->hang; ?></option>
                        <?php
                        } 
                        $sqlhangptm->free_result();                   
                    }
                    ?>
                </select>
            </div>
            <div class="hang_desk">
            <?php 
                $this->db->where('status',0);
                $this->db->where('home',1);
                $this->db->order_by('ordernum','desc');
                $this->db->order_by('id','desc');
                $this->db->limit(10);
                $sqlhangpt=$this->db->get('tblhang');
                if($sqlhangpt->num_rows()>0)
                {
                ?>
                <ul>
                    <?php 
                        foreach ($sqlhangpt->result() as $itemhangpt) 
                        {
                        ?>
                        <li><a href="<?php echo site_url('sanpham/hangpt/'.$itemhangpt->id.'/'.url_title($itemhangpt->hang).'.html'); ?>" title="<?php echo $itemhangpt->hang; ?>"><?php echo $itemhangpt->hang; ?></a></li>
                        <?php
                        }
                        $sqlhangpt->free_result();
                    ?>                                    
                </ul>
                <?php 
                }
            ?>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="box_center_main">
        <div class="row">
             <div class="sanpham_mb">
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('phothong',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(8);
                    $sqlsanphamphothongmb=$this->db->get('tblsanpham');
                    if($sqlsanphamphothongmb->num_rows()>0)
                    {
                        $demptmb=1;
                        foreach ($sqlsanphamphothongmb->result() as $itemsanphamphothongmb) 
                        {                     
                        ?>
                        <div class="col-xs-6">
                            <div class="sanpham_item">                                
                                <a href="<?php echo site_url(LocDau($itemsanphamphothongmb->ten).'-sp'.$itemsanphamphothongmb->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemsanphamphothongmb->ten; ?>"><img src="<?php echo $itemsanphamphothongmb->anh_thumb; ?>" title="<?php echo $itemsanphamphothongmb->ten; ?>" alt="<?php echo $itemsanphamphothongmb->ten; ?>"></a>
                                <a href="<?php echo site_url(LocDau($itemsanphamphothongmb->ten).'-sp'.$itemsanphamphothongmb->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemsanphamphothongmb->ten; ?>"><?php echo $itemsanphamphothongmb->ten; ?></a>
                                <p>
                                    <?php 
                                        if($itemsanphamphothongmb->gia==0)
                                        {
                                            echo 'Liên hệ';
                                        }
                                        else
                                        {
                                            echo number_format($itemsanphamphothongmb->gia,0,'.','.').'&nbsp;'.$itemsanphamphothongmb->donvitinh;
                                        }
                                    ?>
                                </p>
                            </div>
                        </div>
                        <?php
                        if($demptmb%2==0)
                        {
                        ?>
                        <div class="clearfix"></div>
                        <?php    
                        }
                        $demptmb++;
                        }
                        $sqlsanphamphothongmb->free_result();
                    }
                ?>
             </div>
             <div class="sanpham_desk">
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('phothong',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(8);
                    $sqlsanphamphothong=$this->db->get('tblsanpham');
                    if($sqlsanphamphothong->num_rows()>0)
                    {
                        foreach ($sqlsanphamphothong->result() as $itemsanphamphothong) 
                        {                     
                        ?>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <div class="sanpham_item" onmouseover='showtip("<div style=\"width:250px;\"><div style=\"background:#ed1c24;height:35px;line-height:35px;width:100%;line-height:35px;padding-left:10px;font-size:12px;font-weight:bold;color:#fff;\"><?php echo $itemsanphamphothong->ten; ?></div><p style=\"text-align:left;padding-top:9px;padding-left:10px;margin-bottom:0;\"><strong>Giá:</strong>&nbsp;<span style=\"color:red;\"><?php if($itemsanphamphothong->gia==0){ echo 'Liên hệ';}else{ echo number_format($itemsanphamphothong->gia,0,'.','.').'&nbsp;'.$itemsanphamphothong->donvitinh;}?></span></p><p style=\"text-align:left;padding-top:9px;padding-left:10px;margin-bottom:0;\"><strong>Bảo hành:&nbsp;</strong><?php echo $itemsanphamphothong->baohanh; ?></p><?php if(($itemsanphamphothong->khuyenmai1=='')&&($itemsanphamphothong->khuyenmai2=='')&&($itemsanphamphothong->khuyenmai3=='')&&($itemsanphamphothong->khuyenmai4=='')&&($itemsanphamphothong->khuyenmai5=='')){}else{ ?><p style=\"text-align:left;padding-top:9px;padding-left:10px;\"><strong>Khuyễn mại:&nbsp;</strong></p><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->khuyenmai1; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->khuyenmai2; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->khuyenmai3; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->khuyenmai4; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->khuyenmai5; ?></span><?php } ?><p style=\"border-top:1px solid #ddd;margin-top:10px;;text-align:left;padding-top:9px;padding-left:10px;\"><strong>Thông tin</strong></p><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->chip; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->ram; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->pin; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->hedieuhanh; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamphothong->manhinh; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;padding-bottom:10px;\"><?php echo $itemsanphamphothong->camera; ?></span></div>");' onmouseout="hidetip();">
                                <?php 
                                    if($itemsanphamphothong->khuyenmai==1)
                                    {
                                    ?>
                                    <div class="pro_gif"></div>
                                    <?php 
                                    }
                                ?>
                                <a href="<?php echo site_url(LocDau($itemsanphamphothong->ten).'-sp'.$itemsanphamphothong->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemsanphamphothong->ten; ?>"><img src="<?php echo $itemsanphamphothong->anh_thumb; ?>" title="<?php echo $itemsanphamphothong->ten; ?>" alt="<?php echo $itemsanphamphothong->ten; ?>"></a>
                                <a href="<?php echo site_url(LocDau($itemsanphamphothong->ten).'-sp'.$itemsanphamphothong->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemsanphamphothong->ten; ?>"><?php echo $itemsanphamphothong->ten; ?></a>
                                <p>
                                    <?php 
                                        if($itemsanphamphothong->gia==0)
                                        {
                                            echo 'Liên hệ';
                                        }
                                        else
                                        {
                                            echo number_format($itemsanphamphothong->gia,0,'.','.').'&nbsp;'.$itemsanphamphothong->donvitinh;
                                        }
                                    ?>
                                </p>
                            </div>
                        </div>
                        <?php
                        }
                        $sqlsanphamphothong->free_result();
                    }
                ?>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="box_center">
    <div class="box_center_top">
        <div class="box_center_top_l">
            <a href="" title="">Hàng cao cấp</a>
        </div>
        <div class="box_center_top_r"></div>
        <div class="hang_right_sp">
            <div class="hang_mb">
                <select name="hangchon" class="hangchon" onchange="if(this.value != '#') window.open(this.value, '_blank');">
                    <option>--Chọn hãng--</option>
                    <?php 
                    $this->db->where('status',0);
                    $this->db->where('home',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(10);
                    $sqlhangccm=$this->db->get('tblhang');
                    if($sqlhangccm->num_rows()>0)
                    {
                        foreach ($sqlhangccm->result() as $itemhangccm) 
                        {
                        ?>
                        <option value="<?php echo site_url('sanpham/hangcc/'.$itemhangccm->id.'/'.url_title($itemhangccm->hang).'.html'); ?>"><?php echo $itemhangccm->hang; ?></option>
                        <?php
                        } 
                        $sqlhangccm->free_result();                   
                    }
                    ?>
                </select>
            </div>
            <div class="hang_desk">
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('home',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(10);
                    $sqlhangcc=$this->db->get('tblhang');
                    if($sqlhangcc->num_rows()>0)
                    {
                    ?>
                    <ul>
                        <?php 
                            foreach ($sqlhangcc->result() as $itemhangcc) 
                            {
                            ?>
                            <li><a href="<?php echo site_url('sanpham/hangcc/'.$itemhangcc->id.'/'.url_title($itemhangcc->hang).'.html'); ?>" title="<?php echo $itemhangcc->hang; ?>"><?php echo $itemhangcc->hang; ?></a></li>
                            <?php
                            }
                            $sqlhangcc->free_result();
                        ?>                                    
                    </ul>
                    <?php 
                    }
                ?>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="box_center_main">
        <div class="row">
            <div class="sanpham_mb">
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('caocap',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(8);
                    $sqlsanphamcaocapmb=$this->db->get('tblsanpham');
                    if($sqlsanphamcaocapmb->num_rows()>0)
                    {
                        $demccmb=1;
                        foreach ($sqlsanphamcaocapmb->result() as $itemsanphamcaocapmb) 
                        {                     
                        ?>
                        <div class="col-xs-6">
                            <div class="sanpham_item">                                
                                <a href="<?php echo site_url(LocDau($itemsanphamcaocapmb->ten).'-sp'.$itemsanphamcaocapmb->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemsanphamcaocapmb->ten; ?>"><img src="<?php echo $itemsanphamcaocapmb->anh_thumb; ?>" title="<?php echo $itemsanphamcaocapmb->ten; ?>" alt="<?php echo $itemsanphamcaocapmb->ten; ?>"></a>
                                <a href="<?php echo site_url(LocDau($itemsanphamcaocapmb->ten).'-sp'.$itemsanphamcaocapmb->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemsanphamcaocapmb->ten; ?>"><?php echo $itemsanphamcaocapmb->ten; ?></a>
                                <p>
                                    <?php 
                                        if($itemsanphamcaocapmb->gia==0)
                                        {
                                            echo 'Liên hệ';
                                        }
                                        else
                                        {
                                            echo number_format($itemsanphamcaocapmb->gia,0,'.','.').'&nbsp;'.$itemsanphamcaocapmb->donvitinh;
                                        }
                                    ?>
                                </p>
                            </div>
                        </div>
                        <?php
                        if($demccmb%2==0)
                        {
                        ?>
                        <div class="clearfix"></div>
                        <?php    
                        }
                        $demccmb++;
                        }
                        $sqlsanphamcaocapmb->free_result();
                    }
                ?>
            </div>
            <div class="sanpham_desk">
                <?php 
                    $this->db->where('status',0);
                    $this->db->where('caocap',1);
                    $this->db->order_by('ordernum','desc');
                    $this->db->order_by('id','desc');
                    $this->db->limit(8);
                    $sqlsanphamcaocap=$this->db->get('tblsanpham');
                    if($sqlsanphamcaocap->num_rows()>0)
                    {
                        foreach ($sqlsanphamcaocap->result() as $itemsanphamcaocap) 
                        {                     
                        ?>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <div class="sanpham_item" onmouseover='showtip("<div style=\"width:250px;\"><div style=\"background:#ed1c24;height:35px;line-height:35px;width:100%;line-height:35px;padding-left:10px;font-size:12px;font-weight:bold;color:#fff;\"><?php echo $itemsanphamcaocap->ten; ?></div><p style=\"text-align:left;padding-top:9px;padding-left:10px;margin-bottom:0;\"><strong>Giá:</strong>&nbsp;<span style=\"color:red;\"><?php if($itemsanphamcaocap->gia==0){ echo 'Liên hệ';}else{ echo number_format($itemsanphamcaocap->gia,0,'.','.').'&nbsp;'.$itemsanphamcaocap->donvitinh;}?></span></p><p style=\"text-align:left;padding-top:9px;padding-left:10px;margin-bottom:0;\"><strong>Bảo hành:&nbsp;</strong><?php echo $itemsanphamcaocap->baohanh; ?></p><?php if(($itemsanphamcaocap->khuyenmai1=='')&&($itemsanphamcaocap->khuyenmai2=='')&&($itemsanphamcaocap->khuyenmai3=='')&&($itemsanphamcaocap->khuyenmai4=='')&&($itemsanphamcaocap->khuyenmai5=='')){}else{ ?><p style=\"text-align:left;padding-top:9px;padding-left:10px;\"><strong>Khuyễn mại:&nbsp;</strong></p><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->khuyenmai1; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->khuyenmai2; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->khuyenmai3; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->khuyenmai4; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->khuyenmai5; ?></span><?php } ?><p style=\"border-top:1px solid #ddd;margin-top:10px;;text-align:left;padding-top:9px;padding-left:10px;\"><strong>Thông tin</strong></p><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->chip; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->ram; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->pin; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->hedieuhanh; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;\"><?php echo $itemsanphamcaocap->manhinh; ?></span><span style=\"display:block;padding-left:10px;text-align:left;font-size:12px;color:#000;font-weight:normal;padding-bottom:10px;\"><?php echo $itemsanphamcaocap->camera; ?></span></div>");' onmouseout="hidetip();">
                                <?php 
                                    if($itemsanphamcaocap->khuyenmai==1)
                                    {
                                    ?>
                                    <div class="pro_gif"></div>
                                    <?php 
                                    }
                                ?>
                                <a href="<?php echo site_url(LocDau($itemsanphamcaocap->ten).'-sp'.$itemsanphamcaocap->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemsanphamcaocap->ten; ?>"><img src="<?php echo $itemsanphamcaocap->anh_thumb; ?>" title="<?php echo $itemsanphamcaocap->ten; ?>" alt="<?php echo $itemsanphamcaocap->ten; ?>"></a>
                                <a href="<?php echo site_url(LocDau($itemsanphamcaocap->ten).'-sp'.$itemsanphamcaocap->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemsanphamcaocap->ten; ?>"><?php echo $itemsanphamcaocap->ten; ?></a>
                                <p>
                                    <?php 
                                        if($itemsanphamcaocap->gia==0)
                                        {
                                            echo 'Liên hệ';
                                        }
                                        else
                                        {
                                            echo number_format($itemsanphamcaocap->gia,0,'.','.').'&nbsp;'.$itemsanphamcaocap->donvitinh;
                                        }
                                    ?>
                                </p>
                            </div>
                        </div>
                        <?php
                        }
                        $sqlsanphamcaocap->free_result();
                    }
                ?>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<?php 
    $this->db->where('status',0);
    $this->db->where('home',1);
    $this->db->order_by('ordernum','desc');
    $this->db->order_by('id','desc');
    $sqldichvuhome=$this->db->get('tbldanhmucbaiviet2');
    if($sqldichvuhome->num_rows()>0)
    {
        foreach ($sqldichvuhome->result() as $itemdichvuhome) 
        {                  
        ?>
        <div class="box_center">
            <div class="box_center_top">
                <div class="box_center_top_l">
                    <a href="<?php echo site_url(BoDau($itemdichvuhome->danhmucbaivietcap2).'-bv2'.$itemdichvuhome->id.'.html'); ?>" title="<?php echo $itemdichvuhome->danhmucbaivietcap2; ?>"><?php echo $itemdichvuhome->danhmucbaivietcap2; ?></a>
                </div>
                <div class="box_center_top_r"></div>        
                <div class="clearfix"></div>
            </div>
            <div class="box_center_main">
                <div class="row"> 
                    <div class="sanpham_mb">
                        <?php 
                            $this->db->where('status',0);
                            $this->db->where('danhmucbaivietcap2',$itemdichvuhome->id);
                            $this->db->order_by('ordernum','desc');
                            $this->db->order_by('id','desc');
                            $this->db->limit(6);
                            $sqldichvusuachuamb=$this->db->get('tbltintuc');
                            if($sqldichvusuachuamb->num_rows()>0)
                            {
                                $demser=1;
                                foreach ($sqldichvusuachuamb->result() as $itemdichvusuachuamb) 
                                {                                                         
                                ?>                                                                               
                                <div class="col-xs-6">
                                    <div class="sanpham_item">
                                        <a href="<?php echo site_url(LocDau($itemdichvusuachuamb->title).'-'.$itemdichvusuachuamb->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemdichvusuachuamb->title; ?>"><img src="<?php echo $itemdichvusuachuamb->anh_thumb; ?>" title="<?php echo $itemdichvusuachuamb->title; ?>" alt="<?php echo $itemdichvusuachuamb->title; ?>"></a>
                                        <a href="<?php echo site_url(LocDau($itemdichvusuachuamb->title).'-'.$itemdichvusuachuamb->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemdichvusuachuamb->title; ?>"><?php echo $itemdichvusuachuamb->title; ?></a>
                                        <p>
                                        <?php 
                                            if($itemdichvusuachuamb->gia==0)
                                            {
                                                echo 'Liên hệ';
                                            }
                                            else
                                            {
                                                echo number_format($itemdichvusuachuamb->gia,0,'.','.').'&nbsp;'.$itemdichvusuachuamb->donvitinh;
                                            }
                                        ?>
                                        </p>
                                    </div>
                                </div>
                                <?php
                                if ($demser%2==0) 
                                {
                                ?>
                                <div class="clearfix"></div>
                                <?php
                                }
                                $demser++;
                                }
                                $sqldichvusuachuamb->free_result();
                            }
                        ?>
                        <div class="clearfix"></div>
                    </div>
                    <div class="sanpham_desk">
                        <?php 
                            $this->db->where('status',0);
                            $this->db->where('danhmucbaivietcap2',$itemdichvuhome->id);
                            $this->db->order_by('ordernum','desc');
                            $this->db->order_by('id','desc');
                            $this->db->limit(8);
                            $sqldichvusuachua=$this->db->get('tbltintuc');
                            if($sqldichvusuachua->num_rows()>0)
                            {
                                foreach ($sqldichvusuachua->result() as $itemdichvusuachua) 
                                {                                                         
                                ?>                                                                               
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                    <div class="sanpham_item">
                                        <a href="<?php echo site_url(LocDau($itemdichvusuachua->title).'-'.$itemdichvusuachua->id.'.html'); ?>" class="sanpham_item_img" title="<?php echo $itemdichvusuachua->title; ?>"><img src="<?php echo $itemdichvusuachua->anh_thumb; ?>" title="<?php echo $itemdichvusuachua->title; ?>" alt="<?php echo $itemdichvusuachua->title; ?>"></a>
                                        <a href="<?php echo site_url(LocDau($itemdichvusuachua->title).'-'.$itemdichvusuachua->id.'.html'); ?>" class="sanpham_item_name" title="<?php echo $itemdichvusuachua->title; ?>"><?php echo $itemdichvusuachua->title; ?></a>
                                        <p>
                                        <?php 
                                            if($itemdichvusuachua->gia==0)
                                            {
                                                echo 'Liên hệ';
                                            }
                                            else
                                            {
                                                echo number_format($itemdichvusuachua->gia,0,'.','.').'&nbsp;'.$itemdichvusuachua->donvitinh;
                                            }
                                        ?>
                                        </p>
                                    </div>
                                </div>
                                <?php
                                }
                                $sqldichvusuachua->free_result();
                            }
                        ?>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <?php
        } 
        $sqldichvuhome->free_result();
    }
?>
<div class="clearfix"></div>