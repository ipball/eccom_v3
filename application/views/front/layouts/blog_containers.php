<div class="blog-header">
    <h1 class="blog-title"><?= $blog_title; ?></h1>
    <p class="lead blog-description"><?= $blog_description; ?></p>
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

