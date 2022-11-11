<?php
require_once './libs/Router.php';
require_once './app/controllers/ApiCellphoneController.php';

$router = new Router();

$router->addRoute('celulares', 'GET', 'ApiCellphoneController', 'getAllCellphones');
$router->addRoute('celulares/:ID', 'GET', 'ApiCellphoneController', 'getCellphone');
$router->addRoute('celulares/:ID', 'DELETE', 'ApiCellphoneController', 'deleteCellphone');
$router->addRoute('celulares', 'POST', 'ApiCellphoneController', 'insertCellphone'); 
$router->addRoute('celulares/:ID', 'PUT', 'ApiCellphoneController', 'updateCellphone');

// ejecuta la ruta (sea cual sea)
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
