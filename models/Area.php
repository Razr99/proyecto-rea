<?php

namespace Model;

class Area extends ActiveRecord {
    protected static $tabla = 'areas';
    protected static $columnasDB = [
        'id',
        'id_direccion',
        'nombre_area'
    ];

    public $id;
    public $id_direccion;
    public $nombre_area;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->id_direccion = $args['id_direccion'] ?? null;
        $this->nombre_area = $args['nombre_area'] ?? '';
    }
}