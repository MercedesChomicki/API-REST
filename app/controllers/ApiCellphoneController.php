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
           
            $brand = $_GET['id_marca'] ?? null;
            $sort = $_GET['sort'] ?? null;
            $order = $_GET['order'] ?? null;
            $limit = $_GET['limit'] ?? null;
            $offset = $_GET['offset'] ?? null;
    
            $cellphones = $this->model->getAllCellphones($brand, $sort, $order, $limit, $offset);
           
            $response = ""; 

            if($cellphones){
                $this->view->response($cellphones);
            } else {
                if(isset($brand)){
                    $response .= " No existe id_marca=$brand -";
                }
                if((isset($sort) || isset($order)) && ($sort != 'id_celular' || $sort != 'modelo' || $sort != 'precio'
                || $sort != 'id_marca') && ($order != 'asc' || $order != 'desc' 
                || $order != 'ASC' || $order != 'DESC')){
                    $response .= " El campo a ordenar no existe o no se puede ordenar -";
                }
                if(isset($limit) && isset($offset)){
                    $limitMAX= $this->model->getRowsNumber();
                    if($limit > $limitMAX) {
                        $response .= " limit excede el numero de celulares -";
                    } else {
                        $response .= " No hay más celulares ";
                    }
                }
                $this->view->response($response, 400);
            
        }
    }


    public function getCellphone($params = null) {
        // obtengo el id del arreglo de params
        $id = $params[':ID'];
        $cellphone = $this->model->getCellphone($id);

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
