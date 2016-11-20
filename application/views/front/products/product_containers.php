<div class="blog-header">
    <ol class="breadcrumb">
        <li><a href="<?php echo base_url(); ?>">หน้าแรก</a></li>
        <li class="active">สินค้าทั้งหมด</li>
    </ol>
</div>
<div class="row">
    <div class="col-sm-3 blog-sidebar">
        <div class="panel panel-primary">
            <!-- Default panel contents -->
            <div class="panel-heading">ประเภทสินค้า</div>
            <!-- List group -->
            <?= $cat_block; ?>
        </div>
    </div><!-- /.blog-sidebar -->
    <div class="col-sm-9 blog-main">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <?= $product_block; ?>
                </div>
            </div>
        </div>
    </div><!-- /.blog-main -->

</div><!-- /.row -->

<div id="cart">
    <?= $cart_block; ?>
</div>