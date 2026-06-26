<?php include_once __DIR__ . '/../header-dashboard.php'; ?>

<?php if(isset($_SESSION['sweetalert'])): ?>
    <div class="alerta-exitosa" 
         data-titulo="<?php echo $_SESSION['sweetalert']['titulo']; ?>"
         data-mensaje="<?php echo $_SESSION['sweetalert']['mensaje']; ?>"
         data-icono="<?php echo $_SESSION['sweetalert']['icono']; ?>">
    </div>
    <?php unset($_SESSION['sweetalert']); ?>
<?php endif; ?>

<div class="cuerpo-contenedor">
    <h3>Personal</h3>

    <div class="contenedor">
        <div class="encabezado-tabla">
            <div class="texto">
                <h4>Plantilla de personal</h4>
                <p>Listado general de la plantilla del personal</p>
            </div>
        </div>

        <div class="contenedor-buscador-agregar">
            <div class="btn-azul btn-agregar">
                <button onclick="window.location.href='/personal/agregar'">
                    <i class="fa-solid fa-plus"></i> Agregar empleado
                </button>
            </div>
        </div>

        <div class="contenedor-tabla">
            <div id="personal" class="" style="height: 60rem;" data-personal="<?php echo htmlspecialchars(json_encode($personal), ENT_QUOTES, 'UTF-8'); ?>"></div>
        </div>
    </div>
</div>


<?php 
    $script = '<script src="/build/js/app.js"></script>';
    include_once __DIR__ . '/../footer-dashboard.php';
?>