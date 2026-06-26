<?php include_once __DIR__ . '/../header-dashboard.php'; ?>

<div class="cuerpo-contenedor">
    <div class="contenido-usuarios">
        <h3>Agregar Nuevo Empleado</h3>

            <?php include_once __DIR__ . '/../../templates/alertas.php'; ?>

            <div class="btn-regresar">
                <button onclick="window.location.href='/personal'">
                    <span><i class="fa-solid fa-angles-left"></i></span> Regresar atrás
                </button>
            </div>

            <form method="POST" action="/personal/agregar" class="formulario-dashboard">
                <div class="campo">
                    <label for="nombre">Nombre <i class="fa-solid fa-asterisk"></i></label>
                    <input
                        id="nombre"
                        name="nombre"
                        type="text"
                        placeholder="Ingresa el nombre"
                        value="<?php echo s($personal->nombre) ?>"
                    >
                </div>

                <div class="campo">
                    <label for="apellidos">Apellidos <i class="fa-solid fa-asterisk"></i></label>
                    <input
                        id="apellidos"
                        name="apellidos" 
                        type="text"
                        placeholder="Ingresa los apellidos"
                        value="<?php echo s($personal->apellidos) ?>"
                    >
                </div>

                <div class="campo">
                    <label for="numero_empleado">Número de Empleado <i class="fa-solid fa-asterisk"></i></label>
                    <input
                        id="numero_empleado"
                        name="numero_empleado"
                        type="text"
                        placeholder="Ej: 9580"
                        maxlength="4"
                        pattern="[0-9]{10}"
                        inputmode="numeric"
                        oninput="this.value = this.value.replace(/[^0-9]/g,'')"
                        value="<?php echo s($personal->numero_empleado) ?>"
                    >
                </div>

                <div class="campo">
                    <label for="correo">Correo Electrónico</label>
                    <input
                        id="correo"
                        name="correo"
                        type="text"
                        placeholder="ejemplo@redestatal.com.mx"
                        value="<?php echo s($personal->correo) ?>"
                    >
                </div>
                <div class="campo">
                    <label for="telefono">Teléfono de Oficina / Celular</label>
                    <input
                        id="telefono"
                        name="telefono"
                        type="tel"
                        placeholder="Ingresa número de contacto de oficina / celular"
                        value="<?php echo s($personal->telefono) ?>"  
                    >
                </div>
                <div class="campo">
                    <label for="extension">Extensión</label>
                    <input
                    id="extension"
                    name="extension"
                    type="text"
                    inputmode="numeric"
                    maxlength="5"
                    pattern="[0-9]{10}"
                    placeholder="Ej: 57048"
                    oninput="this.value = this.value.replace(/[^0-9]/g,'')"
                    value="<?php echo s($personal->extension) ?>"
                >
                </div>

                <div class="campo">
                    <label for="celular">Número de Celular Personal</label>
                    <input
                    id="celular"
                    name="celular"
                    type="tel"
                    inputmode="numeric"
                    maxlength="10"
                    pattern="[0-9]{10}"
                    placeholder="Número de contacto personal"
                    oninput="this.value = this.value.replace(/[^0-9]/g,'')"
                    value="<?php echo s($personal->celular) ?>"
                >
                </div>

                <div class="campo">
                    <label for="rol">Rol</label>
                    <select id="rol" name="rol" data-tipo="rol" class="formulario__campo buscador">
                        <option value="" disabled <?php echo (empty($trabajador->rol)) ? 'selected' : ''; ?>>
                            Selecciona un rol
                        </option>
                        <option value="Administrador" <?php echo ($trabajador->rol === 'Administrador') ? 'selected' : ''; ?>>
                            Administrador
                        </option>
                        <option value="Técnico" <?php echo ($trabajador->rol === 'Técnico') ? 'selected' : ''; ?>>
                            Técnico
                        </option>
                        <option value="Almacenista" <?php echo ($trabajador->rol === 'Almacenista') ? 'selected' : ''; ?>>
                            Almacenista
                        </option>
                    </select>
                </div>
                <div class="campo">
                    <label for="especialidad">Especialidad</label>
                    <select id="especialidad" name="especialidad" data-tipo="especialidad" class="formulario__campo buscador">
                        <option value="" disabled <?php echo (empty($trabajador->especialidad)) ? 'selected' : ''; ?>>
                            Selecciona una especialidad
                        </option>

                        <option value="Soporte Técnico de Escritorio (Helpdesk)" <?php echo ($trabajador->especialidad === 'Soporte Técnico de Escritorio (Helpdesk)') ? 'selected' : ''; ?>>
                            Soporte Técnico de Escritorio (Helpdesk)
                        </option>
                        <option value="Técnico de Soporte de Impresión" <?php echo ($trabajador->especialidad === 'Técnico de Soporte de Impresión') ? 'selected' : ''; ?>>
                            Técnico de Soporte de Impresión
                        </option>
                        <option value="Técnico de Conectividad y Redes" <?php echo ($trabajador->especialidad === 'Técnico de Conectividad y Redes') ? 'selected' : ''; ?>>
                            Técnico de Conectividad y Redes
                        </option>
                        <option value="Administrador de Sistemas (SysAdmin)" <?php echo ($trabajador->especialidad === 'Administrador de Sistemas (SysAdmin)') ? 'selected' : ''; ?>>
                            Administrador de Sistemas (SysAdmin)
                        </option>
                        <option value="Especialista en Seguridad Electrónica" <?php echo ($trabajador->especialidad === 'Especialista en Seguridad Electrónica') ? 'selected' : ''; ?>>
                            Especialista en Seguridad Electrónica
                        </option>
                        <option value="Técnico en Telecomunicaciones" <?php echo ($trabajador->especialidad === 'Técnico en Telecomunicaciones') ? 'selected' : ''; ?>>
                            Técnico en Telecomunicaciones
                        </option>
                        <option value="Administrador de Noesis TI" <?php echo ($trabajador->especialidad === 'Administrador de Noesis TI') ? 'selected' : ''; ?>>
                            Administrador de Noesis TI
                        </option>
                    </select>
                </div>

                <div class="btn-azul campo-boton">
                    <input type="submit" value="Crear Cuenta">
                </div>
            </form>
        </div>

    </div>
</div>

<?php include_once __DIR__ . '/../footer-dashboard.php'; ?>