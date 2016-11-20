<script type="text/javascript" src="<?php echo base_url(); ?>/js/imagelightbox.min.js"></script>
<script type="text/javascript" src="<?php echo $baseUrl; ?>/js/jquery.form-validator.min.js"></script>
<script>

    $(document).ready(function() {
        $('.add-to-cart').on('click', function() {

            var cart = $('.shopping-cart'); // ตัวนี้ต้องมี ถ้าไม่มี เวลาหยิบใส่ตะกร้า รูปจะไม่ลอยไป ที่ตะกร้า
            var id = $('img').attr("class");

            var imgtodrag = $('img').eq(0);
            if (imgtodrag) {
                var imgclone = imgtodrag.clone()
                        .offset({
                    top: imgtodrag.offset().top,
                    left: imgtodrag.offset().left
                })
                        .css({
                    'opacity': '0.5',
                    'position': 'absolute',
                    'height': '150px',
                    'width': '150px',
                    'z-index': '100'
                })
                        .appendTo($('body'))
                        .animate({
                    'top': cart.offset().top + 10,
                    'left': cart.offset().left + 10,
                    'width': 75,
                    'height': 75
                }, 1000, 'easeInOutExpo');
                setTimeout(function() {
                    cart.effect("shake", {
                        times: 2
                    }, 200);
                }, 1500);

                imgclone.animate({
                    'width': 0,
                    'height': 0
                }, function() {
                    $(this).detach()
                });
            }

        });

    });

</script>
<style>
    #imagelightbox
    {
        position: fixed;
        z-index: 9999;

        -ms-touch-action: none;
        touch-action: none;
    }

    #cart{
        padding:4px;margin: 8px;position:fixed;
        right:0px;
        top:0px;
        width: 190px;
        display: inline-block;
        border: 1px solid #ddd; background-color: #eee;
        -moz-border-radius: 4px; -webkit-border-radius: 4px;                
    }
    .shopping-cart {
        display: inline-block;
        background: url("../images/shoping_cart1.png") no-repeat 0 0;
        width: 240px;
        height: 24px;
        margin: 0 10px 0 0;
    }
    #cart-detail{
        float:right;
    }

</style>

<div class="container">

    <div class="blog-header">
        <ol class="breadcrumb">
            <li><a href=<?php echo base_url(); ?>>หน้าแรก</a></li>
            <li><a href="<?php echo base_url(); ?>getbycatid/<?php echo $qry->catid; ?>"><?php echo $qry->catname; ?></a></li>
            <li class="active"><?php echo $qry->name; ?></li>
        </ol>
    </div>

    <div class="row">
        <div class="col-sm-9 blog-main">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-5">
                            <a href="<?php echo base_url(); ?>upload/product/<?php echo $qry->image; ?>" data-imagelightbox="a">
                                <img id="0" src="<?php echo base_url(); ?>upload/product/thumb_<?php echo $qry->image; ?>" class="img-responsive" alt="Responsive image">
                            </a>
                        </div>
                        <div class="col-sm-7">
                            <h3><?php echo $qry->name; ?></h3>
                            <dl class="dl-horizontal">
                                <dt>ยี่ห้อ</dt>
                                <dd><?php echo $qry->brandname; ?></dd>
                                <dt>ราคา</dt>
                                <dd><?php echo number_format($qry->price, 2, '.', ','); ?></dd>
                            </dl>
                            <hr>
                            <!--<form class="form-inline" role="form" action="http://localhost:90/ecproduct/cart/update/5" method="post">-->
                                <div class="form-group">
                                    <input type="text" class="form-control" id="text2" autocomplete="off" name="qty" placeholder="ใส่จำนวน" data-validation="number" data-validation-allowing="float">
                                </div>
                                <!--<button type="submit" class="btn btn-success">หยิบใส่ตะกร้า</button>-->
                            <!--</form>-->
                            <button class="add-to-cart btn btn-success" type="submit" style="margin-left:5px;padding:7px 20px;">หยิบใส่ตะกร้า</button>
                        </div>
                    </div>
                    <div class="row" style="font-size: 14px;">
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li role="presentation" class="active"><a href="#" onclick="return false;">รายละเอียด</a></li>
                            </ul>
                            <?php echo $qry->detail; ?>

                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.blog-main -->
        <div class="col-sm-3 blog-sidebar">
            <div class="panel panel-primary">
                <!-- Default panel contents -->
                <div class="panel-heading">สินค้าที่เกี่ยวข้อง</div>
                <!-- List group -->
                <ul class="list-group">
                    <?= $productPS_block; ?>
                </ul>
            </div>
        </div><!-- /.blog-sidebar -->

    </div><!-- /.row -->

<div id="cart">
    <?= $cart_block; ?>
</div>


</div><!-- /.container -->

<script type="text/javascript">
    $(document).ready(function() {
        $('a').imageLightbox();
        $.validate();
    });
</script>




