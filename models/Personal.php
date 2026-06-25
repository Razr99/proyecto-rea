<?php

namespace Model;

class Personal extends ActiveRecord {
    protected static $tabla = 'personal';
    protected static $columnasDB = [
        'id',
        'id_puesto_area',
        'id_plaza',
        'id_via',
        'lugar_trabajo',
        'nombre',
        'apellido',
        'numero_empleado',
        'correo',
        'telefono',
        'extension',
        'celular',
        'estatus',
        'fecha_alta',
        'fecha_baja'
    ];

    public $id;
    public $id_puesto_area;
    public $id_plaza;
    public $id_via;
    public $lugar_trabajo;
    public $nombre;
    public $apellido;
    public $numero_empleado;
    public $correo;
    public $telefono;
    public $extension;
    public $celular;
    public $estatus;
    public $fecha_alta;
    public $fecha_baja;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->id_puesto_area = $args['id_puesto_area'] ?? null;
        $this->id_plaza = $args['id_plaza'] ?? null;
        $this->id_via = $args['id_via'] ?? null;
        $this->lugar_trabajo = $args['lugar_trabajo'] ?? '';
        $this->nombre = $args['nombre'] ?? '';
        $this->apellido = $args['apellido'] ?? '';
        $this->numero_empleado = $args['numero_empleado'] ?? '';
        $this->correo = $args['correo'] ?? '';
        $this->telefono = $args['telefono'] ?? '';
        $this->extension = $args['extension'] ?? '';
        $this->celular = $args['celular'] ?? '';
        $this->estatus = $args['estatus'] ?? '';
        $this->fecha_alta = $args['fecha_alta'] ?? '';
        $this->fecha_baja = $args['fecha_baja'] ?? '';
    }
}