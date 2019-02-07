<?php

class dbconn {

    public $dblocal;

    public function __construct() {
        
    }

    public function initDBO() {
        $this->dblocal = new PDO("mysql:host=localhost;dbname=NOME_DA_SUA_BASE_DE_DADOS;charset=latin1", "SEU USUARIO", "SUA SENHA", array(PDO::ATTR_PERSISTENT => true));
        $this->dblocal->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

}

?>