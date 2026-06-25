<?php

namespace Model;

class Usuario extends ActiveRecord {
    protected static $tabla = 'usuarios';
    protected static $columnasDB = [
        'id',
        'id_personal',
        'id_rol',
        'username',
        'password_hash',
        'activo',
        'fecha_alta',
        'ultimo_acceso'
    ];

    public $id;
    public $id_personal;
    public $id_rol;
    public $username;
    public $password_hash;
    public $activo;
    public $fecha_alta;
    public $ultimo_acceso;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->id_personal = $args['id_personal'] ?? null;
        $this->id_rol = $args['id_rol'] ?? null;
        $this->username = $args['username'] ?? '';
        $this->password_hash = $args['password_hash'] ?? '';
        $this->activo = $args['activo'] ?? '';
        $this->fecha_alta = $args['fecha_alta'] ?? '';
        $this->ultimo_acceso = $args['ultimo_acceso'] ?? '';
    }

    public function validarLogin() {
        if(!$this->username) {
            self::$alertas['error'][] = 'El nombre de usuario es obligatorio';
        }

        if(!$this->password_hash) {
            self::$alertas['error'][] = 'La contraseña es obligatoria';
        }

        return self::$alertas;
    }
}