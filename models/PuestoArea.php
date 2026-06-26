<?php

namespace Model;

class PuestoArea extends ActiveRecord {
    protected static $tabla = 'puesto_area';
    protected static $columnasDB = [
        'id',
        'id_puesto',
        'id_area',
        'id_direccion'
    ];

    public $id;
    public $id_puesto;
    public $id_area;
    public $id_direccion;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->id_puesto = $args['id_puesto'] ?? null;
        $this->id_area = $args['id_area'] ?? null;
        $this->id_direccion = $args['id_direccion'] ?? null;
    }
}