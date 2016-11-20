<?php

class Products extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        $this->load->library('LayoutNormal');
        $this->layoutnormal->set_title('สินค้าทั้งหมด');

        $this->layoutnormal->add_includes('css/cart.css')
                ->add_includes('js/cart.js')
                ->add_includes('jss/jquery.min.js')
                ->add_includes('jss/jquery-ui.min.js');

        $this->layoutnormal->set_arrLayout(2);

        $this->load->library('Html_lib');
        $data['cat_block'] = $this->html_lib->getCatBlock();
        $data['product_block'] = $this->html_lib->getProductListBlock();
        
        $data['cart_block'] = $this->html_lib->genCartBlock();


        $this->layoutnormal->view('front/layouts/home_template', $data, TRUE);
    }

}

