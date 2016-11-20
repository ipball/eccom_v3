<?php

class Data_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function catdata() {
        $query = $this->db->select('*')
                ->get('product_categories');
        return $query->result();
    }

    //******

    function get($id) {
        $results = $this->db->get_where('products', array('id' => $id))->result();
        $result = $results[0];

        if ($result->option_values) {
            $result->option_values = explode(',', $result->option_values);
        }

        return $result;
    }

    function get_all() {
        $results = $this->db->get('products')->result();
        foreach ($results as &$result) {
            if ($result->option_values) {
                $result->option_values = explode(',', $result->option_values);
            }
        }

        return $results;
    }

    // Add an item to the cart
    function validate_add_cart_item() {

        $id = $this->input->post('product_id'); // Assign posted product_id to $id
        $opt_name = $this->input->post('product_option');
        //
//        $cty = $this->input->post('quantity'); // Assign posted quantity to $cty
        $this->db->where('id', $id); // Select where id matches the posted id       
        $query = $this->db->get('products', 1); // Select the products where a match is found and limit the query by 1
        // Check if a row has matched our product id
//        echo $query->num_rows;
//        exit();
//        return $query->result();

        if ($query->num_rows() > 0) {

            // We have a match!
            foreach ($query->result() as $row) {
                // Create an array with product information
                $data = array(
                    'id' => $id,
                    'qty' => 1,
                    'price' => $row->price,
                    'name' => $row->name
                );

                if ($row->option_name) {
                    $data['options'] = array(
                        $row->option_name => $opt_name
                    );
                }

                // Add the data to the cart using the insert function that is available because we loaded the cart library
                $this->cart->insert($data);

                return TRUE; // Finally return TRUE
            }
        } else {
            // Nothing found! Return FALSE! 
            return FALSE;
        }
    }

    //******    

    function productdata() {
        $res = $this->db->select('a.*,b.name as catname')
                ->from('products a')
                ->join('product_categories b', ' a.product_categorie_id = b.id')
                ->order_by('a.id')
                ->get();

        $results = $res->result();

        foreach ($results as &$result) {
            if ($result->option_values) {
                $result->option_values = explode(',', $result->option_values);
            }
        }

//        print_r($results);
//        exit();

        return $results;
    }

    function productdataByCat($Cat_id) {
        $res = $this->db->select('a.*,b.name as catname')
                ->from('products a')
                ->join('product_categories b', ' a.product_categorie_id = b.id')
                ->where('a.product_categorie_id', $Cat_id)
                ->order_by('a.id')
                ->get();
        $results = $res->result();
        foreach ($results as &$result) {
            if ($result->option_values) {
                $result->option_values = explode(',', $result->option_values);
            }
        }

        return $results;
    }

    function productdata_old() {
        $query = $this->db->select('a.*,b.name as catname')
                ->from('products a')
                ->join('product_categories b', ' a.product_categorie_id = b.id')
                ->order_by('a.id')
                ->get();
        return $query->result();
    }

    function productdataByDetail($pro_id) {

        $query = $this->db->select('a.*,b.id as catid,b.name as catname')
                ->from('products a')
                ->join('product_categories b', ' a.product_categorie_id = b.id')
                ->where('a.id', $pro_id)
                ->get();

        if ($query->num_rows() > 0) {
            return $query->first_row();
        }
//        $query->free_result();
    }

    //สินค้าที่เกี่ยวข้อง
    function productdataPS($Cat_id) {

        $query = $this->db->select('id,name,price,image')
                ->from('products')
                ->where('product_categorie_id', $Cat_id)
                ->order_by('id')
                ->get();
        return $query->result();
    }

    function aboutusdata() {

        $query = $this->db->select('*')
                ->from('contents')
                ->where('codename', 'aboutus')
                ->get();

        if ($query->num_rows() > 0) {
            return $query->first_row();
        }
    }

    function howtopaydata() {

        $query = $this->db->select('*')
                ->from('contents')
                ->where('codename', 'howtopay')
                ->get();

        if ($query->num_rows() > 0) {
            return $query->first_row();
        }
    }

}