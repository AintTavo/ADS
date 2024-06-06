$(document).ready(()=>{
    const validaDatos = new JustValidate("#formLogin",{
        tooltip: {
          position: "bottom"
        },
        submitFormAutomatically: true
    });
    //Validar los datos del formulario
    validaDatos.addField("#curp",[
        {
            //La CURP debe de contener datos
            rule:"required",
            errorMessage: "Falta ingresar la C.U.R.P"
        },
        {
            rule:"minLength",
            value:18,
            errorMessage: "Deben de contener 18 caracteres,ha ingresado menos de 18 caracteres"
        },
        {
            rule:"maxLength",
            value:18,
            errorMessage: "Deben de contener 18 caracteres,ha ingresado mas de 18 caracteres"
        }
    ])


    $("#boton1").on("click",()=>{
        console.log("Boton presionado");
    })
    $("#img_medalla").on("click",()=>{
        console.log("Imagen presionado");
    })
    // Agrega un event listener para el evento 'input' utilizando jQuery para la dependencia
    $('#curp').on('input', function() {
       // Convierte el valor a mayúsculas y asigna de nuevo al input
       $(this).val($(this).val().toUpperCase());
    });
    
})