<?php
require_once "../qtools/qcli.php";

class Learn {
    public static function title($title) {
		qcli::message($title, "info");
    }
    public static function line($line) {
		qcli::message($line, "ball");
    }
    public static function ex001() {
		Learn::title("Dates and Times");
		Learn::line("today is " . date("Y-m-d"));
		Learn::line("today is " . date("l"));
    }

    public static function ex002() {
        qcli::message('Running exercise 002');
        // Add your exercise 002 code here
    }
}
