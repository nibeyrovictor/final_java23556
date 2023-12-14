<!DOCTYPE html>
<html lang="es">

<head>
<!-- codificación de caracteres utilizada en la página web -->
    <meta charset="UTF-8">
<!-- indica al navegador web cómo debe interpretar la página web en términos de compatibilidad con versiones antiguas del navegador Internet Explorer -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- SEO Meta Tags -->
    <meta name="keywords" content="php, curso, codoacodo, codo a codo">
<!-- Autor Meta Tags -->        
		<meta name="author" content="Víctor Alberto Nibeyro">
<!-- Icono de la pestaña tambien si se modifica ver en <a class="navbar-brand" href="#"><img src=... -->         
        <link rel="shortcut icon" type="image/x-icon" href="/images/codoacodo.png"> 
<!-- Vista determinada  necesaria para bootstrap -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="/styles/v5.3.0-alpha3/node_modules/bootstrap/dist/css/bootstrap.css">
    <link rel="stylesheet" href="/styles/style.css"> 
    <link rel="stylesheet" href="/styles/animate.css">
<!-- Renovación de cache -->
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
        <title>Codo a codo - Compra de Tickets</title>
</head>

<body>
<!--Barra de navegación-->
<header class="fixed-top">
    <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark mx-auto px-md-5">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img class="logo animate__animated animate__flip animate__slow " src="/images/codoacodo.png" alt="" width="50" height="44" href="index.html">
                <span class="titulo ml-2" href="index.html">Conf Bs As</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.html">La conferencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#oradores">Los oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#lugaryfecha">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html#formulario">Conviértete en orador</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-success font-weight-bold font-compra" href="compra_ticket.html" id="comprarTickets">Comprar tickets</a>
                    </li>
                    <li class="nav-item">
                        <img class="nav-link" src="/images/osc.png" alt="" width="50" height="44" onclick="toggleDarkMode()">
                    </li>  
                </ul>
            </div>
        </div>
    </nav>
</header >    

<!-- Columnas de descuentos -->      
<section id="columnas_descuentos">
    <div class="container mt-5 mt-lg-5 pt-5">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="bg-white p-3 border border-primary">
                    <div class="text-center">
                        <h5>Estudiante</h5>
                        <p>Tienen un descuento</p>
                        <p>80%</p>
                        <p>? presentar documentación</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="bg-white p-3 border border-primary">
                    <div class="text-center">
                        <h5>Trainee</h5>
                        <p>Tienen un descuento</p>
                        <p>50%</p>
                        <p>? presentar documentación</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="bg-white p-3 border-orange">
                    <div class="text-center">
                        <h5>Junior</h5>
                        <p>Tienen un descuento</p>
                        <p>15%</p>
                        <p>? presentar documentación</p>
                    </div>
                </div>
            </div>
        </div>
    </div>   
</section>
    <section>
    <h2 class="text-center"><span class="smaller-text">VENTA </span> <br>VALOR DEL TICKET $200</h2>

</section>
             

<!--Formulario -->            
<section class="formulario py-5">
    <div class="container">
        <div class="row justify-content-center">
            <form action="" method="post">
                <div class="row g-3 mt-4">
                    <div class="col-md-6">
                        <input class="form-control" type="text" name="Nombre" id="Nombre" placeholder="Nombre">
                    </div>
                    <div class="col-md-6">
                        <input class="form-control" type="text" name="Apellido" id="Apellido" placeholder="Apellido">
                    </div>
                </div>
                <div class="row g-3 mt-4">
                    <div class="col-md-12">
                        <input class="form-control" type="mail" name="mail" id="mail" placeholder="Correo">
                    </div>
                </div>
                <div class="row g-3 mt-4">
                    <div class="col-md-6">
                        <label for="Cantidad" class="form-label">Cantidad</label>
                        <input class="form-control" type="number" name="Cantidad" id="Cantidad" placeholder="Cantidad" onkeypress="return soloNumeros(event)">
                    </div>
                    <div class="col-md-6">
                        <label for="Categoria" class="form-label">Categoría</label>
                        <select class="form-select" name="Categoria" id="Categoria">
                            <option value="" disabled selected>Seleccione una categoría</option>
                            <option value="Estudiante">Estudiante</option>
                            <option value="Trainee">Trainee</option>
                            <option value="Junior">Junior</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12">
                        <div class="bg-info p-3 text-dark" id="totalAPagar" style="background-color: #cfe1f2;">
                            Total a Pagar: $&nbsp;
                        </div>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-6 text-md-end">
                        <input class="btn btn-success btn-lg btn-block" type="reset" value="Borrar" onclick="borrarCampos()">
                    </div>
                    <div class="col-md-6 text-md-start mt-3 mt-md-0">
                        <input class="btn btn-success btn-lg btn-block" type="button" value="Resumen" onclick="calcularTotal()">
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>





<!-- Script de calculo de descuentos y demas -->      
<script>
    function soloNumeros(event) {
        var charCode = event.which ? event.which : event.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
        return true;
    }

    function calcularTotal() {
        var cantidad = parseInt(document.getElementById('Cantidad').value);
        var categoria = document.getElementById('Categoria').value;
        
        if (isNaN(cantidad) || cantidad <= 0 || categoria === '') {
            alert('Por favor, ingrese una cantidad válida y seleccione una categoría.');
            return;
        }
        
        var descuento = 0;
        
        if (categoria === 'Estudiante') {
            descuento = 0.2; // Descuento del 80% (100% - 80%)
        } else if (categoria === 'Trainee') {
            descuento = 0.5;
        } else if (categoria === 'Junior') {
            descuento = 0.85;
        }
        
        var total = cantidad * 200 * descuento; 
        document.getElementById('totalAPagar').innerHTML = 'Total a Pagar: $ ' + total;
    }
    
    function borrarCampos() {
    document.getElementById('Nombre').value = '';
    document.getElementById('Apellido').value = '';
    document.getElementById('mail').value = ''; 
    document.getElementById('Cantidad').value = '';
    document.getElementById('Categoria').selectedIndex = 0;
    document.getElementById('totalAPagar').innerHTML = 'Total a Pagar: $ ';
}

// Obtener el elemento del enlace "Comprar tickets"
var comprarTicketsLink = document.getElementById('comprarTickets');

// Verificar si estamos en la página "Comprar tickets"
if (window.location.href.includes('compra_ticket.html')) {
    // Agregar la clase CSS para resaltar el menú
    comprarTicketsLink.classList.add('active');
} else {
    // Quitar la clase CSS si no estamos en la página "Comprar tickets"
    comprarTicketsLink.classList.remove('active');
}

function toggleDarkMode() {
        // Obtener el elemento <body>
        var body = document.querySelector('body');

        // Obtener el elemento con el id "columnas_descuentos"
        var columnasDescuentos = document.getElementById('columnas_descuentos');

        // Cambiar la clase CSS del elemento <body> para alternar entre los estilos claro y oscuro
        body.classList.toggle('dark-mode');

        // Cambiar el fondo del elemento con el id "columnas_descuentos" según el modo oscuro
        if (body.classList.contains('dark-mode')) {
            columnasDescuentos.style.backgroundColor = '#000';
        } else {
            columnasDescuentos.style.backgroundColor = '';
        }
    }

</script>





     

    
<!--Pie de página -->   
<footer class="bg-dark py-3">
    <div class="container">
        <nav class="text-center">
            <ul class="list-inline justify-content-center mb-0">
                <li class="mx-3 text-white d-inline">Preguntas Frecuentes</li>
                <li class="mx-3 text-white d-inline">Contáctanos</li>
                <li class="mx-3 text-white d-inline">Prensa</li>
                <li class="mx-3 text-white d-inline">Conferencias</li>
                <li class="mx-3 text-white d-inline">Términos y condiciones</li>
                <li class="mx-3 text-white d-inline">Privacidad</li>
                <li class="mx-3 text-white d-inline">Estudiantes</li>
            </ul>
        </nav>
    </div>
</footer>


<!-- JavaScript para bootstrap 5.3 -->
        <script src="./styles/v5.3.0-alpha3/node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
</body>

</html>