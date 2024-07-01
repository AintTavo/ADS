// Function to initialize the Leaflet map and add markers
function initMap() {
    const map = L.map('map').setView([19.42847, -99.12766], 12); // Centrado en CDMX por defecto
    
    // Data for hospitals in CDMX
    const hospitals = [
        { name: "Hospital General de México", phone: "+52 55 1234 5678", address: "Dr. Balmis 148, Morelos, 06700 Ciudad de México, CDMX", position: [19.425, -99.155] },
        { name: "Hospital Juárez de México", phone: "+52 55 2345 6789", address: "Eje Central Lázaro Cárdenas 300, Merced Balbuena, 15890 Ciudad de México, CDMX", position: [19.415, -99.139] },
        { name: "Hospital Infantil de México", phone: "+52 55 3456 7890", address: "Niños Héroes 270, Doctores, 06720 Ciudad de México, CDMX", position: [19.420, -99.150] },
        { name: "Hospital Ángeles del Pedregal", phone: "+52 55 4567 8901", address: "Periférico Sur 4363, Jardines del Pedregal, 01900 Ciudad de México, CDMX", position: [19.337, -99.199] },
        { name: "Hospital de la Mujer", phone: "+52 55 5678 9012", address: "Concepción Beistegui 160, Benito Juárez, 03310 Ciudad de México, CDMX", position: [19.378, -99.165] }
    ];

    // Check if Geolocation is supported
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(position => {
            const userPosition = [position.coords.latitude, position.coords.longitude];
            map.setView(userPosition, 12);

            // Add OpenStreetMap tile layer
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '© OpenStreetMap contributors'
            }).addTo(map);

            // Add a marker for the user's location
            L.marker(userPosition).addTo(map)
                .bindPopup('Tu ubicación')
                .openPopup();

            // Calculate distances and sort hospitals
            hospitals.forEach(hospital => {
                hospital.distance = haversineDistance(userPosition, hospital.position);
            });
            hospitals.sort((a, b) => a.distance - b.distance);

            // Limit to the 5 closest hospitals
            const closestHospitals = hospitals.slice(0, 5);

            // Add markers for closest hospitals
            closestHospitals.forEach(hospital => {
                const marker = L.marker(hospital.position).addTo(map);
                marker.bindPopup(`
                    <strong>${hospital.name}</strong><br>
                    ${hospital.address}<br>
                    ${hospital.phone}<br>
                    Distancia: ${hospital.distance.toFixed(2)} km
                `);
            });

            // Update the table with hospital data
            updateHospitalTable(closestHospitals);
        }, error => {
            console.error('Error al obtener la ubicación:', error);
        });
    } else {
        alert('La geolocalización no es compatible con este navegador.');
    }
}

// Function to update the hospital table
function updateHospitalTable(hospitals) {
    const tableBody = document.getElementById('hospital-table-body');
    tableBody.innerHTML = ''; // Clear existing table data
    hospitals.forEach(hospital => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${hospital.name}</td>
            <td>${hospital.phone}</td>
            <td>${hospital.address}</td>
            <td>${hospital.distance.toFixed(2)} km</td>
        `;
        tableBody.appendChild(row);
    });
}

// Haversine formula to calculate distance between two coordinates
function haversineDistance(coord1, coord2) {
    const R = 6371; // Radius of the Earth in kilometers
    const lat1 = coord1[0] * Math.PI / 180;
    const lon1 = coord1[1] * Math.PI / 180;
    const lat2 = coord2[0] * Math.PI / 180;
    const lon2 = coord2[1] * Math.PI / 180;

    const dLat = lat2 - lat1;
    const dLon = lon2 - lon1;

    const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
              Math.cos(lat1) * Math.cos(lat2) *
              Math.sin(dLon / 2) * Math.sin(dLon / 2);
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    return R * c; // Distance in kilometers
}

// Initialize the map when the window loads
window.onload = initMap;
