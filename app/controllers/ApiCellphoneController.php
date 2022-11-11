<?php
require_once './app/models/CellphoneModel.php';
require_once './app/views/ApiView.php';

class ApiCellphoneController {
    private $model;
    private $view;
    private $data;

    public function __construct() {
        $this->model = new CellphoneModel();
        $this->view = new ApiView();
        
        // lee el body del request
        $this->data = file_get_contents("php://input");
    }

    private function getData() {
        return json_decode($this->data);
    }

    public function getAllCellphones($params = null) {

        if(isset($_GET['sort']) || isset($_GET['order'])){
            $cellphones = $this->model->getAllCellphones($_GET['sort'], $_GET['order']);
            $this->view->response($cellphones);
        } else if(isset($_GET['limit']) && isset($_GET['offset'])){
            $cellphones = $this->model->getAllCellphones(null, null, null, $_GET['limit'], $_GET['offset']);
            $this->view->response($cellphones);
        } else if(isset($_GET['id_marca'])){
            $cellphones = $this->model->getAllCellphones(null, null, $_GET['id_marca']);
            $this->view->response($cellphones);
        } else{
            $cellphones = $this->model->getAllCellphones();
            $this->view->response($cellphones);
        } 
    }

    public function getCellphone($params = null) {
        // obtengo el id del arreglo de params
        $id = $params[':ID'];
        $cellphone = $this->model->getCellphone($id);

        // si no existe devuelvo 404
        if ($cellphone)
            $this->view->response($cellphone);
        else 
            $this->view->response("El celular con el id=$id no existe", 404);
    }

    public function deleteCellphone($params = null) {
        $id = $params[':ID'];

        $cellphone = $this->model->getCellphone($id);
        if ($cellphone) {
            $this->model->deleteCellphone($id);
            $this->view->response("El celular con el id=$id fue eliminado con éxito", 200);
        } else 
            $this->view->response("El celular con el id=$id no existe", 404);
    }

    public function insertCellphone() {
        $cellphone = $this->getData();

        if (empty($cellphone->modelo) || empty($cellphone->precio) || empty($cellphone->descripcion) || empty($cellphone->id_marca) || empty($cellphone->Imagen)) {
            $this->view->response("Complete los datos", 400);
        } else {
            $id = $this->model->insertCellphone($cellphone->modelo, $cellphone->precio, $cellphone->descripcion, $cellphone->id_marca, $cellphone->Imagen);
            $cellphone = $this->model->getCellphone($id);
            $this->view->response($cellphone, 201);
        }
    }

    public function updateCellphone($params = null) {
        $id = $params[':ID'];
        $body = $this->getData();

        $cellphone = $this->model->getCellphone($id);
        if ($cellphone) {
            $this->model->updateCellphone($id, $body->modelo, $body->precio, $body->descripcion, $body->id_marca, $body->Imagen);
            $this->view->response($cellphone, 200);
        } else
            $this->view->response("El celular con el id=$id no existe", 404);
    
    }

   

}
