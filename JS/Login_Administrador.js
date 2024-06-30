$(document).ready(()=>{
    const validaDatos = new JustValidate("#formulario_admin",{
        tooltip: {
          position: "bottom"
        },
        submitFormAutomatically: true
    });
    //Validar los datos del formulario
    validaDatos.addField("#usuario",[
        {
            //La CURP debe de contener datos
            rule:"required",
            errorMessage: "Falta ingresar el usuario"
        }
    ])
    .addField("#password",[
        {
            //La contraseña debe de contener datos
            rule:"required",
            errorMessage: "Falta ingresar la contraseña"
        },
        {
            rule: 'minLength',
            errorMessage:"La contraseña debe de tener 8 caracteres",
            value: 8,
        },
        {
            rule: 'maxLength',
            errorMessage:"La contraseña debe de tener 8 caracteres",
            value: 8,
        },
    ])
})