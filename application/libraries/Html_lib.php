<?php

class Html_lib {

    private $CI;

    public function __construct() {
        $this->CI = & get_instance();
    }

    function genCartBlock() {
        $html = "";
//        $html .="<div id='cart'>";
        if (!$this->CI->cart->contents()) {
            $html .= "<div class='shopping-cart'>".nbs(10)."ยังไม่มีรายการสินค้า</div>";
        } else {
            $html .= "<div class='shopping-cart'>".nbs(10)."คลิ๊กดูรายละเอียดสินค้า</div>";
            $html .= "<p></p>";
            $html .= "<table class='table table-striped col-md-4' width='100%' cellpadding='0' cellspacing='0'>";
            $html .= "<tr>";
            $html .= "<td class='col-md-2'><strong>รวม</strong></td>";
            $html .= "<td>&#3647; " . $this->CI->cart->format_number($this->CI->cart->total()) . "</td>";
            $html .= "</tr>";
            $html .= "</table>";
        }
//        $html .= "</div>";
        return $html;
    }

    function getCatBlock() {
        $this->CI->load->model('data_model');
        $data['qry'] = $this->CI->data_model->catdata();

        $html = "";
        foreach ($data['qry'] as $row) {
            $html .= "<ul class = 'list-group'>";
            $html .= "<li class = 'list-block'><a href = '" . base_url() . "Getbycatid/" . $row->id . "'>" . $row->name . "</a></li>";
            $html .="</ul>";
        }

        return $html;
    }

    function genProductList($data) {
        $html = "";
        $i = 0;
        foreach ($data['qry'] as $row) {
            $html .= "<div class = 'col-sm-6 col-md-4'>";

            //            $html .="<form accept-charset='utf-8' method='post' action='http://localhost:90/cart_v31/shop/add'>";

            $html .= "<div class = 'thumbnail' style = 'height: 350px!important;'>";
            $html .= "<img id='" . $i . "' src = '" . base_url() . "upload/product/thumb_" . $row->image . "' alt = '" . $row->name . "'>";  //Self close
            $html .= "<div class = 'caption'>";
            $html .= "<a href = '" . base_url() . "getbyproid/" . $row->id . "' style = 'font-size: 13px;'>" . $row->name . "</a>"; //Self close
            $html .= "<p style = 'font-size: 13px;font-weight: bold;color: red;'>ราคา : " . number_format($row->price) . " บาท</p>"; //Self close
            $html .= "<p style = 'font-size: 13px;'>หมวดหมู่ : " . $row->catname . "</p>"; //Self close

            $html .= "</div>";  // End of div.caption

            if ($row->option_name) {
                $html .= "<div class='form-inline'>";
                $html .="<label class='control-label input-sm' for='option_" . $row->id . "' style='padding:7px 10px 2px;'>" . $row->option_name . "</label>"; //Self close

                $html .="<select class='form-control input-sm' name='" . $row->option_name . "' id='option_" . $row->id . "' style='width:auto;margin:2px 5px;padding:2px;'>";
                $j = 0;
                foreach ($row->option_values as $value) {
                    $html .="<option value='" . $j . "'>" . $value . "</option>";
                    $j++;
                }

                $html .="</select>"; // End of Select Options                                

                $html .= "</div>"; // End of div.form-inline
                $html .= "<p></p>";  //Self close
            }

            $html .="<input type='hidden' value='" . $row->id . "' name='id" . $i . "'>";

            $html .= "<a href = '" . base_url() . "getbyproid/" . $row->id . "' class = 'btn btn-default' role = 'button' style='margin-left:10px;padding:5px;'>รายละเอียด</a>"; //Self close
            $html .= "<button class='add-to-cart btn btn-success' type='submit' style='margin-left:10px;padding:5px;'>หยิบใส่ตะกร้า</button>"; //Self close
            //            $html .= "</form>";

            $html .= "</div>"; // End of div.thumbnail
            $html .= "</div>"; // End of div.col-sm-6 col-md-4
            $i++;
        }
        return $html;
    }

    function genProductList_xx($data) {
        $html = "";
        $html .= "<div class='items'>";
        foreach ($data['qry'] as $product) {
            $html .= "<div class='item'>";
            //            $html .= "<form accept-charset='utf-8' method='post' action='http://localhost:90/ecom_v3/shop/add'>";

            $html .= "<div class='name'>" . $product->name . "</div>";
            $html .= "<img alt='Rubber Ducky' src='" . base_url() . "upload/product/thumb_" . $product->image . "'>";
            $html .= "<div class='price'>$" . $product->price . "</div>";

            $html .= "<button class='add-to-cart' type='submit'> Add to Cart</button>";


            //            $html .= "</form>";
            $html .= "</div>";
        }
        $html .= "</div>";

        return $html;
    }

    function getProductListBlock() {
        $this->CI->load->model('data_model');
        $data['qry'] = $this->CI->data_model->productdata();

        $html = $this->genProductList($data);

        return $html;
    }

    function getProductListByCat($Cat_id) {
        $this->CI->load->model('data_model');
        $data['qry'] = $this->CI->data_model->productdataByCat($Cat_id);

        $html = $this->genProductList($data);

        return $html;
    }

    function getProductPS($Cat_id) {
        $this->CI->load->model('data_model');
        $data['qry'] = $this->CI->data_model->productdataPS($Cat_id);
        $html = "";
        foreach ($data['qry'] as $row) {
            $html .= "<li class = 'list-block'>";
            $html .= "<a href = '" . base_url() . "getbyproid/" . $row->id . "'>";
            $html .= "<img src = '" . base_url() . "upload/product/sm_" . $row->image . "' class = 'img-responsive' alt = 'Responsive image'>";
            $html .= "$row->name" . "(" . number_format($row->price, 2, '.', ',') . ")";
            $html .= "</a>";
            $html .= "</li>";
        }
        return $html;
    }

    function genTopBox($params) {
        $html = "";

        foreach ($params['qry'] as $row) {
            $html .="<div class=box" . $row->id . ">";

            $html .= "<div class=box" . $row->id . "top>";
            $html.="<h2>" . $row->hostname . "</h2>";
            $html.="</div>";

            $html.="<div class = 'body'>";
            $html.="Start from<br />";
            $html.="<span class = 'price'>" . $row->price . "</span> per month";
            $html.="<ul>";
            $html.="<li>" . $row->diskSpace . "</li>";
            $html.="<li>" . $row->bandwidth . "</li>";
            $html.="<li>" . $row->hosttype . "</li>";
            $html.="</ul>";
            $html.="<div class = 'readmore_black'><a href = 'subpage.html'>Learn more</a></div>";
            $html.="</div>";
            $html.="<div class = 'boxbottom'>";

            $html.="</div>";
            $html.="</div>";
        }
        return $html;
    }

    function genTopBox2($params) {
        $html = "";

        $n = 0;
        foreach ($params as $row) {
            $recNew = array();
            foreach ($row as $value) {
                if ($n > 2) {
                    $recNew[] = $value;
                }
                $n++;
            }
            $html .="<div class=box" . $row->id . ">";
            $html .= "<div class=box" . $row->id . "top>";
            $html.="<h2>" . $row->hostname . "</h2>";
            $html.="</div>";

            $html.="<div class = 'body'>";
            $html.="Start from<br />";
            $html.="<span class = 'price'>" . $row->price . "</span> per month";
            $html.="<ul>";


            foreach ($recNew as $value) {
                $html.="<li>" . $value . "</li>";
            }

            $html.="</ul>";
            $html.="<div class = 'readmore_black'><a href = " . base_url() . "orders" . ">สั่งซื้อ</a></div>";
            $html.="</div>";
            $html.="<div class = 'boxbottom'>";

            $html.="</div>";
            $html.="</div>";


            $n = 0;
        }

        return $html;
    }

    function getTopMenu($params) {

        $html = "";

        foreach ($params['qry'] as $row) {

            $html .= "<ul>";
            $html .= "<li><a href=" . base_url() . $row->menulink . " class='current'>" . $row->menuname . "</a></li>";
            $html .= "</ul>";
        }
        return $html;
    }

    function genBlockDisplayOLD($params) {

        $html = "";

        foreach ($params['qry'] as $row) {

            $html .= "<table class='bordered' style ='width:100%;'>";
            $html .= "<tr>";
            $html .= "<th colspan='3'> $row->desc</th>";
            $html .= "</tr>";
            $html .= "<tr>";
            $html .= "<th style='width:40%'>ชื่อหุ้น</th>";
            $html .= "<th style='width:27%'>เลขบน</th>";
            $html .= "<th style='width:30%'>เลขล่าง</th>";
            $html .= "</tr>";

            $this->CI->load->model('structure_model');
            $myModel = new structure_model;

            $data['stocks'] = $myModel->select_stocks($row->method_name);

            foreach ($data['stocks'] as $row) {
                $html .= "<tr>";
                $html .= "<td>" . nbs(3) . $row->NameLot . "</td>";
                $html .= "<td>" . $row->ThreeLot . "</td>";
                $html .= "<td>" . $row->TwoLot . "</td>";
                $html .= "</tr>";
            }


            $html .= "</table>";
        }


        return $html;
    }

    function genBlockDisplay($params) {

        $html = "";

        foreach ($params['qry'] as $row) {

            $html .= "<table style='margin:5px 0px;border:1px #BCD8C0 solid; width:100%;background:" . $row->bgcolor . ";color:" . $row->fcolor . "'>";
            $html .= "<tr>";
            $html .= "<th colspan='3'style='font-weight: bold;font-size:14px;'> $row->desc</th>";
            $html .= "</tr>";
            $html .= "<tr style='font-weight: bold;font-size:12px;'>";
            $html .= "<th style='border:1px #BCD8C0 solid; width:46%'>ชื่อหุ้น</th>";
            $html .= "<th style='border:1px #BCD8C0 solid; width:27%'>เลขบน</th>";
            $html .= "<th style='border:1px #BCD8C0 solid; width:27%'>เลขล่าง</th>";
            $html .= "</tr>";

            $this->CI->load->model('structure_model');
            $myModel = new structure_model;

            $data['stocks'] = $myModel->select_stocks($row->method_name);

            foreach ($data['stocks'] as $row) {
                $html .= "<tr style='border:1px #BCD8C0 solid; width:100%;font-size:12px;'>";
                $html .= "<td id='namelot' style='border:1px #BCD8C0 solid; width:46%;text-align:left;'>" . nbs(3) . $row->NameLot . "</td>";
                $html .= "<td style='border:1px #BCD8C0 solid; width:27%'>" . $row->ThreeLot . "</td>";
                $html .= "<td style='border:1px #BCD8C0 solid; width:27%'>" . $row->TwoLot . "</td>";
                $html .= "</tr>";
            }


            $html .= "</table>";
        }


        return $html;
    }

    function genBlockDisplayxx($params) {
        $html = "";

        $html .= $params->desc;


        return $html;
    }

}
