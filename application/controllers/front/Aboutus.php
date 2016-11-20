<?php

class Aboutus extends CI_Controller {

    function __construct() {
        parent::__construct();
    }

    function index() {
        $this->load->library('LayoutNormal');
        $this->layoutnormal->set_title('เกี่ยวกับเรา');
        $this->layoutnormal->set_arrLayout(3);

        $this->load->model('data_model');
        $data['aboutqry'] = $this->data_model->aboutusdata();

        $this->layoutnormal->view('front/aboutus/index', $data, TRUE);
    }

}