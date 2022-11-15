<?php
require_once './libs/Router.php';
require_once './app/controllers/CellphoneApiController.php';
require_once './app/controllers/AuthApiController.php';

$router = new Router();

$router->addRoute('celulares', 'GET', 'CellphoneApiController', 'getAllCellphones');
$router->addRoute('celulares/:ID', 'GET', 'CellphoneApiController', 'getCellphone');
$router->addRoute('celulares/:ID', 'DELETE', 'CellphoneApiController', 'deleteCellphone');
$router->addRoute('celulares', 'POST', 'CellphoneApiController', 'insertCellphone'); 
$router->addRoute('celulares/:ID', 'PUT', 'CellphoneApiController', 'updateCellphone');

$router->addRoute("celulares/auth/token", 'GET', 'AuthApiController', 'getToken');

// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
