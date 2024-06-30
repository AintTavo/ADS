$(document).ready(()=>{
    $("#boton_eliminar").on("click",()=>{
        console.log("boton");
        Swal.fire({
            title: "ELIMINACION!",
            text: "!Registro Eliminado!",
            icon: "success",
            
          });
    })
})