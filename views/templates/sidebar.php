<aside class="sidebar">

    <h2>NOESIS</h2>

    <?php
        $rol = $_SESSION['rol'] ?? '';
    ?>

    <nav class="sidebar-nav">
        <a class="<?php echo(str_contains($titulo, 'Dashboard')) ? 'activo' : '' ?>" href="/dashboard">Dashboard</a>

        <?php if(in_array($rol, ['Administrador'])): ?>
            <a class="<?php echo(str_contains($titulo, 'Personal')) ? 'activo' : '' ?>" href="/personal">Personal</a>
        <?php endif; ?>

        <?php if(in_array($rol, ['Técnico'])): ?>

        <?php endif; ?>
        
        <a class="<?php echo(str_contains($titulo, 'Equipos')) ? 'activo' : '' ?>" href="/equipos">Equipos</a>
        <a class="<?php echo(str_contains($titulo, 'Tickets')) ? 'activo' : '' ?>" href="/tickets">Tickets</a>
    </nav>
</aside>