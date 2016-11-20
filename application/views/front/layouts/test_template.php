
        <script>
            $(document).ready(function() {
                $('.add-to-cart').on('click', function() {
                    var cart = $('.shopping-cart');
                    var imgtodrag = $(this).parent('.item').find("img").eq(0);
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
            * {
                margin: 0;
                padding: 0;
            }
            body {
                background-color: #F2EEE9;
                font: normal 13px/1.5 Georgia, Serif;
                color: #333;
            }
            .wrapper {
                width: 80%;
                margin: 20px auto;
                padding: 20px;
            }
            h1 {
                display: inline-block;
                background-color: #333;
                color: #fff;
                font-size: 20px;
                font-weight: normal;
                text-transform: uppercase;
                padding: 4px 20px;
                float: left;
            }
            .clear {
                clear: both;
            }
            .items {
                display: block;
                margin: 20px 0;
            }
            .item {
                background-color: #fff;
                float: left;
                margin: 0 10px 10px 0;
                width: 205px;
                padding: 10px;
                height: 290px;
            }
            .item img {
                display: block;
                margin: auto;
            }
            h2 {
                font-size: 16px;
                display: block;
                border-bottom: 1px solid #ccc;
                margin: 0 0 10px 0;
                padding: 0 0 5px 0;
            }
            button {
                border: 1px solid #722A1B;
                padding: 4px 14px;
                background-color: #fff;
                color: #722A1B;
                text-transform: uppercase;
                float: right;
                margin: 5px 0;
                font-weight: bold;
                cursor: pointer;
            }
            span {
                float: right;
            }
            .shopping-cart {
                display: inline-block;
                background: url("images/shoping_cart1.png") no-repeat 0 0;
                width: 24px;
                height: 24px;
                margin: 0 10px 0 0;
            }

            #cart{
                padding:4px;margin: 8px;position:fixed;
                left:1023px;
                top:0%;
                border: 1px solid #ddd; background-color: #eee;
                -moz-border-radius: 4px; -webkit-border-radius: 4px;                
            }
            #cart table{
                width: 320px; border-collapse: collapse;
                text-align: left;
            }
            #cart th{
                border-bottom: 1px solid #aaa;
            }
            #cart caption{
                font-size: 15px; height: 30px; text-align: left;
            }
            #cart .total{
                height: 40px;
            }
            #cart .remove a {
                color : red;
            }
        </style>




        <div class="wrapper">

            <div class="clear"></div>

            <?= $product_block; ?>

            <div id="cart">
                <span><i class="shopping-cart"></i></span>
            </div>

        </div>
    </body>
</html>