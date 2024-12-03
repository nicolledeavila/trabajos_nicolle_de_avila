const cells = Array.from(document.querySelectorAll(".cell"));
let originalData = []; 

fetch("archivo1.json")
    .then(response => response.json())
    .then(data => {
        
        originalData = [
            data.nombre, data.edad, data.ciudad,
            data.Nombre, data.Edad, data.Ciudad,
            data.nOmbre, data.eDad, data.cIudad
        ];

        
        cells.forEach((cell, index) => {
            cell.innerHTML = originalData[index];
        });
    });


function clearTable() {
    cells.forEach(cell => {
        cell.innerHTML = '';
    });
}


function restoreTable() {
    cells.forEach((cell, index) => {
        cell.innerHTML = originalData[index];
    });
}