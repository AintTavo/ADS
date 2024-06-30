let tiempoTranscurrido = 0;
let intervalo;
let duracionAlarma = 0; // Variable para almacenar la duración de la alarma en segundos

function formatTime(seconds) {
    let mins = Math.floor(seconds / 60);
    let secs = seconds % 60;
    return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
}

function actualizarContador() {
    tiempoTranscurrido++;
    document.getElementById('contador').textContent = formatTime(tiempoTranscurrido);

    if (tiempoTranscurrido >= duracionAlarma) {
        enviarNotificacion(); // Llamar a la función para enviar notificación
        detenerConteo();
    }
}

function empezarConteo() {
    // Calcular duración total de la alarma en segundos
    let horas = parseInt(document.getElementById('horas').value) || 0;
    let minutos = parseInt(document.getElementById('minutos').value) || 0;
    let segundos = parseInt(document.getElementById('segundos').value) || 0;
    duracionAlarma = horas * 3600 + minutos * 60 + segundos;

    intervalo = setInterval(actualizarContador, 1000);
    document.getElementById('contador').textContent = formatTime(tiempoTranscurrido);
}

function detenerConteo() {
    clearInterval(intervalo);
    tiempoTranscurrido = 0; // Reiniciar el tiempo transcurrido
}

function enviarNotificacion() {
    if (!("Notification" in window)) {
        console.error("Este navegador no soporta notificaciones desktop");
    } else if (Notification.permission === "granted") {
        mostrarNotificacion();
    } else if (Notification.permission !== "denied") {
        Notification.requestPermission().then(function (permission) {
            if (permission === "granted") {
                mostrarNotificacion();
            }
        });
    }
}

function mostrarNotificacion() {
    var options = {
        body: `¡Han pasado ${formatTime(duracionAlarma)}!`,
        icon: '/ruta/a/icono.png' // Ruta al icono de la notificación
    };

    var notification = new Notification('Tiempo de Alarma', options);

    // Reproducir sonido de alarma
    var audio = new Audio('../MP3/alert.mp3'); // Ruta del archivo de sonido de alarma
    audio.play();
}