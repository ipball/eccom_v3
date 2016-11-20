<?php

class LayoutNormal {

    private $CI;
    private $layout_title = null;
    private $layout_description = null;
    private $arrLayout = null;
    // hold include like css and js files
    private $includes = array();

    public function __construct() {
        $this->CI = & get_instance();
        $this->gen_include();
    }


    public function set_arrLayout($layout) {

        if ($layout == 1) {
            $this->arrLayout = array('blog_masthead' => 'front/layouts/blog_masthead',
                'blog_containers' => 'front/layouts/blog_containers',
                'blog_footer' => 'front/layouts/blog_footer'
            );
        }else if ($layout == 2) {
            $this->arrLayout = array('blog_masthead' => 'front/layouts/blog_masthead',
                'blog_containers' => 'front/products/product_containers',
                'blog_footer' => 'front/layouts/blog_footer'
            );            
        } 
        else {
            $this->arrLayout = array('blog_masthead' => 'front/layouts/blog_masthead',
                'blog_footer' => 'front/layouts/blog_footer'
            );
        }
    }

    public function set_title($title) {
        $this->layout_title = $title;
    }

    public function set_description($description) {
        $this->layout_description = $description;
    }

    public function add_includes($path, $prepend_base_url = true) {
        if ($prepend_base_url) {
            $this->CI->load->helper('url'); // just in case
            $this->includes[] = base_url() . $path;
        } else {
            $this->includes[] = $path;
        }

        return $this;
    }

    public function gen_include() {
        $this->add_includes('bootstrap/css/bootstrap.min.css')
                ->add_includes('bootstrap/css/bootstrap-theme.min.css')
                ->add_includes('css/blog.css')
                ->add_includes('js/jquery.1.11.1.min.js')
                ->add_includes('jss/jquery-ui.min.js')
                ->add_includes('bootstrap/js/bootstrap.min.js');

        return $this;
    }

    public function print_includes() {
        $final_includes = '';
        foreach ($this->includes as $include) {
            if (preg_match('/js$/', $include)) {
                $final_includes .= '<script type="text/javascript" src="' . $include . '"></script>';
            } elseif (preg_match('/css$/', $include)) {
                $final_includes .= '<link rel="stylesheet" type="text/css" href="' . $include . '"  />';
            }
        }
        return $final_includes;
    }

    public function view($view_name, $params = array(), $default = true) {

        if (is_array($this->arrLayout) && count($this->arrLayout) >= 1) {
            foreach ($this->arrLayout as $layout_key => $layout) {
                $params[$layout_key] = $this->CI->load->view($layout, $params, TRUE);
            }
        }
        if ($default) {
            //======================================================
            //set layout title
            $header_params['layout_title'] = $this->layout_title;

            //set layout description
            $header_params['layout_description'] = $this->layout_description;

            // render default header
            $this->CI->load->view('layouts/header', $header_params);

            // render content
            $this->CI->load->view($view_name, $params);

            // render footer            
            $this->CI->load->view('layouts/footer');
        } else {
            //render viewer
            $this->CI->load->view($view_name, $params);
        }
    }

}
