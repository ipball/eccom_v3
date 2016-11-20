<div id="cart">
    <div class="shopping-cart"><?php echo nbs(10); ?>คลิ๊กดูรายละเอียด</div>
    <table class="table table-striped col-md-4" width="100%" cellpadding="0" cellspacing="0">        


        <?php $i = 1; ?>
        <?php foreach ($this->cart->contents() as $items): ?>

            <?php echo form_hidden('rowid[]', $items['rowid']); ?>
            <tr>
                <td class="col-md-2"><?php echo $items['name']; ?></td>

                <td class="col-md-2">&euro;<?php echo $this->cart->format_number($items['subtotal']); ?></td>
            </tr>

            <?php $i++; ?>
        <?php endforeach; ?>


        <tr>
            <td class="col-md-2"><strong>Total</strong></td>
            <td>&euro;<?php echo $this->cart->format_number($this->cart->total()); ?></td>
        </tr>        
    </table>
</div>

