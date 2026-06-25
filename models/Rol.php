<?php

namespace Model;

class Rol extends ActiveRecord {
    protected static $tabla = 'roles';
    protected static $columnasDB = [
        'id',
        'nombre_rol',
        'descripcion'
    ];

    public $id;
    public $nombre_rol;
    public $descripcion;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->nombre_rol = $args['nombre_rol'] ?? '';
        $this->descripcion = $args['descripcion'] ?? '';
    }
}