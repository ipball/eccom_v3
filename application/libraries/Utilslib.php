<?php

class Utilslib {

    public static function left($str, $length) {
        return substr($str, 0, $length);
    }

    public static function right($str, $length) {
        return substr($str, -$length);
    }

    public static function getDayAsNum() {
        date_default_timezone_set("Asia/Bangkok");
        $cur_date = date("Y-m-d");
        return date('N', strtotime($cur_date)); // 'N' (1 for Monday) ( 7 for Sunday)
    }

    public static function getOnlyNums($data) {
        $output = preg_replace('/[^0-9]/', '', $data);
        return $output;
    }

    public static function getWithoutNums($data) {
        $output = trim(str_replace(range(0, 9), '', $data));
        return $output;
    }

    public static function cleanData($data) {
        $output = preg_replace('/(?:<|&lt;).+?(?:>|&gt;)/ ', '', $data);
        return $output;
    }

    public static function salt_pass($pass) {
        return md5("itoffside.com" . $pass);
    }

    public static function thaidate($strDate) {
        $strYear = date("Y", strtotime($strDate) + 543);
        $strMonth = date("n", strtotime($strDate));
        $strDay = date("d", strtotime($strDate));
        $strHour = date("H", strtotime($strDate));
        $strMinute = date("i", strtotime($strDate));
        $strMonthCut = Array("", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12");
        $strMonthThai = $strMonthCut[$strMonth];
        return "$strDay/$strMonthThai/$strYear, $strHour:$strMinute";
    }
    
    

}