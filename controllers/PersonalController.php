<?php

namespace Controllers;

use Model\Personal;
use Model\Via;
use MVC\Router;

class PersonalController {

    public static function personal(Router $router) {

        isAuth();
        $alertas = [];
        rol(['Administrador']);

        $personal = Personal::AllPersonal();

        $router->render('dashboard/personal/personal',[
            'titulo' => 'Personal',
            'personal' => $personal
        ]);
    }

    public static function personalAgregar(Router $router) {

        isAuth();
        $alertas = [];
        rol(['Administrador']);
        $via = Via::all();
        $personal = new Personal();

        if($_SERVER['REQUEST_METHOD'] === 'POST') {
        }

        $alertas = Personal::getAlertas();

        $router->render('dashboard/personal/personal-agregar', [
            'titulo' => 'Agregar Personal',
            'via' => $via,
            'alertas' => $alertas
        ]);
    }
}