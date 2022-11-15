<?php

class CellphoneModel {

    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_celulares;charset=utf8', 'root', '');
    }

    function getRowsNumber(){
        $query = $this->db->prepare("SELECT COUNT(*) total_celulares FROM celular");
        $query->execute();
        $total = $query->fetchColumn();
        return $total;
    }

    public function getAllCellphones($brand = null, $sort = null, $order = null, $limit = null, $offset = null) {
        
        $query = "SELECT * FROM celular";
        
        if (!empty($brand)) {
            $query .= " WHERE id_marca = $brand";
        }
        if(!empty($sort) && !empty($order)){
            $query .= " ORDER BY $sort $order";
        }
        if(!empty($limit) && (!empty($offset) || $offset == 0)){
            $query .= " LIMIT $limit OFFSET $offset";
        }
       
        $sentence = $this->db->prepare($query);
        $sentence->execute();
        return $sentence->fetchAll(PDO::FETCH_OBJ);
    }



    public function getCellphone($id) {
        $query = $this->db->prepare('SELECT * FROM celular WHERE id_celular = ?');
        $query->execute([$id]);
        $cellphone = $query->fetch(PDO::FETCH_OBJ);
        return $cellphone;
    }

    public function deleteCellphone($id) {
        $query = $this->db->prepare('DELETE FROM celular WHERE id_celular = ?');
        $query->execute([$id]);
    }

    public function insertCellphone($model, $price, $description, $id_brand, $image=null) {

        $query = $this->db->prepare("INSERT INTO celular (modelo, precio, descripcion, id_marca, Imagen) VALUES (?, ?, ?, ?, ?)");
        $query->execute([$model, $price, $description, $id_brand, $image]);

        return $this->db->lastInsertId();
    }

    public function updateCellphone($id, $model, $price, $description, $id_brand, $image=null){

        $query = $this->db->prepare('UPDATE celular SET modelo = ?, precio = ?, descripcion = ?, id_marca = ?, Imagen = ? WHERE id_celular = ?');
        $query->execute([$model, $price, $description, $id_brand, $image, $id]);
    }



}