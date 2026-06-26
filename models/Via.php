<?php

namespace Model;

class Via extends ActiveRecord {
    protected static $tabla = 'via';
    protected static $columnasDB = [
        'id',
        'nombre_via'
    ];

    public $id;
    public $nombre_via;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->nombre_via = $args['nombre_via'] ?? '';
    }
}