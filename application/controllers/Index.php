<?php

class Index extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    public function test() {
        $this->load->view('test');
    }
    
    function test2()
    {
        echo base_url();
    }

    public function index() {
        $this->load->library('LayoutNormal');
        $this->layoutnormal->set_title('หน้าแรก ร้านค้าออนไลน์ สะดวกในการซื้อ ประหยัดในทุกการใช้จ่าย ปลอดภัยในทุกขั้นตอน');
        $this->layoutnormal->add_includes('css/cart.css')
                ->add_includes('js/cart.js');

        $this->layoutnormal->set_arrLayout(1);

        $data['blog_title'] = "tjking ecProduct";
        $data['blog_description'] = "xxxร้านค้าออนไลน์ สะดวกในการซื้อ ประหยัดในทุกการใช้จ่าย ปลอดภัยในทุกขั้นตอน";

        $this->load->library('Html_lib');
        $data['cat_block'] = $this->html_lib->getCatBlock();
        $data['product_block'] = $this->html_lib->getProductListBlock();
        
        $data['cart_block'] = $this->html_lib->genCartBlock();

        $this->layoutnormal->view('front/layouts/Home_template', $data, TRUE);
    }

    public function getProductByCat($Cat_id) {
        $this->load->library('LayoutNormal');
        $this->layoutnormal->set_title('หน้าแรก ร้านค้าออนไลน์ สะดวกในการซื้อ ประหยัดในทุกการใช้จ่าย ปลอดภัยในทุกขั้นตอน');
        $this->layoutnormal->add_includes('css/cart.css')
                ->add_includes('js/cart.js');

        $this->layoutnormal->set_arrLayout(1);

        $data['blog_title'] = "tjking ecProduct";
        $data['blog_description'] = "xxxร้านค้าออนไลน์ สะดวกในการซื้อ ประหยัดในทุกการใช้จ่าย ปลอดภัยในทุกขั้นตอน";

        $this->load->library('Html_lib');
        $data['cat_block'] = $this->html_lib->getCatBlock();
        $data['product_block'] = $this->html_lib->getProductListByCat($Cat_id);
        
        $data['cart_block'] = $this->html_lib->genCartBlock();


        $this->layoutnormal->view('front/layouts/home_template', $data, TRUE);
    }

    public function getProductDetails($pro_id) {
        $this->load->library('LayoutNormal');


        $this->load->model('data_model');
        $data['qry'] = $this->data_model->productdataByDetail($pro_id);

        //   !! ห้ามลบ เป็นอันขาด  !! กว่าจะหามาได้
        //บังเอิญจริง ๆ ตัวไปนี้เป็นตัวอย่าง ที่ทำให้เราสามารถ get ค่าแบบ single 
        //ซึ่งต้องที่ model ด้วย ตาม $this->data_model->productdataByDetail($pro_id);
        //echo $data['qry']->catid;
        //xxxxxxxxx

        $this->layoutnormal->set_title($data['qry']->name);

        $this->layoutnormal->set_arrLayout(1);

        $this->load->library('Html_lib');
        $data['productPS_block'] = $this->html_lib->getProductPS($data['qry']->catid);

        $data['cart_block'] = $this->html_lib->genCartBlock();

        $data['blog_title'] = "tjking ecProduct";
        $data['blog_description'] = "xxxร้านค้าออนไลน์ สะดวกในการซื้อ ประหยัดในทุกการใช้จ่าย ปลอดภัยในทุกขั้นตอน";
        $data['catid'] = $data['qry']->catid;


        $this->layoutnormal->view('front/products/product_temp', $data, TRUE);
    }

    function show_cart() {
        $this->load->library('Html_lib');
        $data = $this->html_lib->genCartBlock();
        echo $data;
    }

    function add_cart_item() {
        $this->load->model('data_model');

//        $id = $this->input->post('product_id');
//        echo $id;



        if ($this->data_model->validate_add_cart_item() == TRUE) {

//            $opt = $this->input->post($row->option_name);
//            echo $opt;

//            echo "have";
            // Check if user has javascript enabled
            if ($this->input->post('ajax') != '1') {
                redirect('cart'); // If javascript is not enabled, reload the page with new data
            } else {
//                $cart = $this->cart->contents();
//
//                echo "<pre>";
//                print_r($cart);
                echo 'true'; // If javascript is enabled, return true, so the cart gets updated
            }
        }
    }

    function emptycart() {
        $this->cart->destroy();
    }

    function show() {
        $cart = $this->cart->contents();

        echo "<pre>";
        print_r($cart);
    }

    private function check_isvalidated() {
        if (!$this->session->userdata('validated')) {
            return FALSE;
        } else {
            return TRUE;
        }
    }

}