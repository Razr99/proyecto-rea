<?php

namespace Model;

class Plaza extends ActiveRecord {
    protected static $tabla = 'plazas';
    protected static $columnasDB = [
        'id',
        'nombre_plaza',
        'direccion_fisica'
    ];

    public $id;
    public $nombre_plaza;
    public $direccion_fisica;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->nombre_plaza = $args['nombre_plaza'] ?? '';
        $this->direccion_fisica = $args['direccion_fisica'] ?? '';
    }
}