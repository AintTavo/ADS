$(document).ready(function(){
    //Validacion del formulario
    const validacion = new JustValidate('#formulario_docentes',{
        submitFormAutomatically: true
    });
    validacion.addField('#recordatorio',[
        {
            rule:'required',
            errorMessage:"Por favor escribe el nombre del recordatorio",
        }
    ]).addField('#tipo',[
        {
            rule:'required',
            errorMessage:"Por favor escribe el tipo al que pertenece",
        }
    ])
    .addField('#importancia',[
        {
            rule:'required',
            errorMessage:"Por favor escribe la importancia que recibirá",
        }
    ])
    .addField('#hora',[
        {
            rule:'required',
            errorMessage:"Por favor ingresa la hora correcta",
        }
    ])
    
    .addField('#inicio_periodo',[
        {
            rule:'required',
            errorMessage:"Por favor ingresa la hora de inicio del periodo",
        }
    ])
    .addField('#fin_periodo',[
        {
            rule:'required',
            errorMessage:"Por favor ingresa la hora de fin del periodo",
        }
    ]);
    $('.sidenav').sidenav();
    //Paginacion de la tabla de registros
    $('#tabla_registros_docente').DataTable({
        searching: true ,
        ordering:false,
        language: {
            processing: "Tratamiento en curso...",
            search: "",
            lengthMenu: "Agrupar de _MENU_ items",
            info: "Mostrando del item _START_ al _END_ de un total de _TOTAL_ items",
            infoEmpty: "No existen datos.",
            infoFiltered: "(filtrado de _MAX_ elementos en total)",
            infoPostFix: "",
            loadingRecords: "Cargando...",
            zeroRecords: "No se encontraron datos con tu busqueda",
            emptyTable: "No hay datos disponibles en la tabla.",
            paginate: {
                first: "Primero",
                previous: "Anterior",
                next: "Siguiente",
                last: "Ultimo"
            },
            aria: {
                sortAscending: ": active para ordenar la columna en orden ascendente",
                sortDescending: ": active para ordenar la columna en orden descendente"
            }
        },
        scrollY: 400,
        lengthMenu: [ [10, 25, -1], [10, 25, "All"] ],
    });
    //Paginacion de la tabla de confirmacion de asitencia
    $('#tabla_confirmacion_asistencia_docente').DataTable({
        searching: true ,
        ordering:false,
        language: {
            processing: "Tratamiento en curso...",
            search: "",
            lengthMenu: "Agrupar de _MENU_ items",
            info: "Mostrando del item _START_ al _END_ de un total de _TOTAL_ items",
            infoEmpty: "No existen datos.",
            infoFiltered: "(filtrado de _MAX_ elementos en total)",
            infoPostFix: "",
            loadingRecords: "Cargando...",
            zeroRecords: "No se encontraron datos con tu busqueda",
            emptyTable: "No hay datos disponibles en la tabla.",
            paginate: {
                first: "Primero",
                previous: "Anterior",
                next: "Siguiente",
                last: "Ultimo"
            },
            aria: {
                sortAscending: ": active para ordenar la columna en orden ascendente",
                sortDescending: ": active para ordenar la columna en orden descendente"
            }
        },
        scrollY: 400,
        lengthMenu: [ [10, 25, -1], [10, 25, "All"] ],
    });
    
     // Agrega un event listener para el evento 'input' utilizando jQuery para la dependencia
    $('#dependencia_docente').on('input', function() {
        // Convierte el valor a mayúsculas y asigna de nuevo al input
        $(this).val($(this).val().toUpperCase());
    });
    // Agrega un event listener para el evento 'input' utilizando jQuery para el curp
    $('#curp_docente').on('input', function() {
        // Convierte el valor a mayúsculas y asigna de nuevo al input
        $(this).val($(this).val().toUpperCase());
    });
    //Agregar el evento para detectar si se oprime el boton de de registrar
    $('#boton_registrar_docente').on("click",()=>{
        console.log("BOTON");
    })
   
});