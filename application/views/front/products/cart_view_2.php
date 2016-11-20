<?php if (!$this->cart->contents()): ?>
    <div class="shopping-cart"><?php echo nbs(10); ?>ยังไม่มีรายการสินค้า</div>
<?php else: ?>
    <div class="shopping-cart"><?php echo nbs(10); ?>คลิ๊กดูรายละเอียดสินค้า</div>
    <p></p>
    <table class="table table-striped col-md-4" width="100%" cellpadding="0" cellspacing="0">        
        <tr>
            <td class="col-md-2"><strong>รวม</strong></td>
            <td>&#3647; <?php echo $this->cart->format_number($this->cart->total()); ?></td>
        </tr>        
    </table>
<?php endif; ?>


