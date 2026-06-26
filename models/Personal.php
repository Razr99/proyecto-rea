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
        'apellidos',
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
    public $apellidos;
    public $numero_empleado;
    public $correo;
    public $telefono;
    public $extension;
    public $celular;
    public $estatus;
    public $fecha_alta;
    public $fecha_baja;
    //Variables adicionales
    public $direccion;
    public $area;
    public $puesto;
    public $plaza;
    public $via;

    public function __construct($args = []) {
        $this->id = $args['id'] ?? null;
        $this->id_puesto_area = $args['id_puesto_area'] ?? null;
        $this->id_plaza = $args['id_plaza'] ?? null;
        $this->id_via = $args['id_via'] ?? null;
        $this->lugar_trabajo = $args['lugar_trabajo'] ?? '';
        $this->nombre = $args['nombre'] ?? '';
        $this->apellidos = $args['apellidos'] ?? '';
        $this->numero_empleado = $args['numero_empleado'] ?? '';
        $this->correo = $args['correo'] ?? '';
        $this->telefono = $args['telefono'] ?? '';
        $this->extension = $args['extension'] ?? '';
        $this->celular = $args['celular'] ?? '';
        $this->estatus = $args['estatus'] ?? '';
        $this->fecha_alta = $args['fecha_alta'] ?? '';
        $this->fecha_baja = $args['fecha_baja'] ?? '';
    }

    public static function AllPersonal() {
        $query = "SELECT 
                    p.*, 
                    v.nombre_via AS via,
                    pl.nombre_plaza AS plaza,
                    a.nombre_area AS area,
                    pu.nombre_puesto AS puesto
                    FROM personal AS p
                    LEFT JOIN via AS v           ON p.id_via = v.id
                    LEFT JOIN plazas AS pl       ON p.id_plaza = pl.id
                    LEFT JOIN puesto_area AS pa  ON p.id_puesto_area = pa.id
                    LEFT JOIN areas AS a         ON pa.id_area = a.id
                    LEFT JOIN puestos AS pu      ON pa.id_puesto = pu.id;"
        ;
        
        $resultado = self::consultarSQL($query);
        return $resultado;
    }
}