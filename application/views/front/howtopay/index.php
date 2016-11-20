<div class="blog-masthead">
    <?= $blog_masthead; ?>
</div>

<div class="container">
    <div class="blog-header">
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>">หน้าแรก</a></li>
            <li class="active">วิธีการสั่งซื้อ</li>
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

        <div class="col-sm-9">
            <div class="panel panel-default">
                <div class="panel-body">
                    <?= $howtopay->detail; ?>
                </div>
            </div>
        </div><!-- /.blog-main -->

    </div><!-- /.row -->


</div><!-- /.container -->

<div class="blog-footer">
    <?= $blog_footer; ?>
</div>
