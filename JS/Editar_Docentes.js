$(document).ready(()=>{
    //Validacion del formulario
    const validacion = new JustValidate('#formulario_editar_docentes',{
        submitFormAutomatically: true
    });
    validacion.addField('#nombre_recordatorio',[
        {
            rule:'required',
            errorMessage:"Por favor escribe el nombre del recordatorio",
        }
    ]).addField('#tipo_recordatorio',[
        {
            rule:'required',
            errorMessage:"Por favor escribe el tipo al que pertenece",
        }
    ])
    .addField('#importancia_recordatorio',[
        {
            rule:'required',
            errorMessage:"Por favor escribe la importancia que recibirá",
        }
    ])
    .addField('#hora_recordatorio',[
        {
            rule:'required',
            errorMessage:"Por favor ingresa la hora correcta",
        }
    ])
  
    .addField('#fecha_recordatorio',[
        {
            rule:'required',
            errorMessage:"Por favor selecciona la fecha del recordatorio",
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
     
})