<?php

class Howtopay extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        $this->load->library('LayoutNormal');
        $this->layoutnormal->set_title('วิธีการสั่งซื้อ');
        $this->layoutnormal->set_arrLayout(3);

        $this->load->library('Html_lib');
        $data['cat_block'] = $this->html_lib->getCatBlock();

        $this->load->model('data_model');
        $data['howtopay'] = $this->data_model->howtopaydata();

        $this->layoutnormal->view('front/howtopay/index', $data, TRUE);
    }

}