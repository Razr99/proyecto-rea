<?php

namespace Controllers;

use Model\Personal;
use MVC\Router;

class PersonalController {

    public static function personal(Router $router) {

        isAuth();
        $alertas = [];
        rol(['Administrador']);

        $personal = new Personal;

        $router->render('dashboard/personal/personal',[
            'titulo' => 'Personal de REA',
            'personal' => $personal::all()
        ]);
    }
}