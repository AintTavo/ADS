    
        $.ajax({
            type: 'post',
            url:'../php/crearCuenta.php',
            data:dataInv,
            success: function(respuesta){
                
                let response = JSON.parse(respuesta); // Convertir la respuesta a JSON
                console.log(response);
                    if (response.cod == 0) {
                        Swal.fire({
                            position: 'top-center',
                            icon: 'error',
                            title: '¡ERROR!',
                            text: response.msj,
                            showConfirmButton: false,
                            timer: 2000
                        }).then(() => {
                            // Recargar la página después de cerrar la alerta
                            location.reload();
                        });
                    } else if(response.cod == 1){
                        Swal.fire({
                            position: 'top-center',
                            icon: 'success',
                            title: '¡ÉXITO!',
                            text: response.msj,
                        }).then(() => {
                            window.location.href = '../html/loginInv.html';
                        });
                    }else{
                        Swal.fire({
                            position: 'top-center',
                            icon: 'error',
                            title: '¡ERROR!',
                            text: "Ha ocurrido un error",
                            showConfirmButton: true,
                        
                        }).then(() => {
                            // Recargar la página después de cerrar la alerta
                            location.reload();
                        });
                    }
            }
        
        });
      
     