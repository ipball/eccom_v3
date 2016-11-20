<div class="blog-masthead">
    <?= $blog_masthead; ?>
</div>

<div class="container">
    <div class="blog-header">
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>">หน้าแรก</a></li>
            <li class="active">เกี่ยวกับเรา</li>
        </ol>
    </div>
    <div class="row">

        <div class="col-sm-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <?php echo $aboutqry->detail; ?>
                </div>
            </div>
        </div><!-- /.blog-main -->

    </div><!-- /.row -->

</div><!-- /.container -->

<div class="blog-footer">
    <?= $blog_footer; ?>
</div>
