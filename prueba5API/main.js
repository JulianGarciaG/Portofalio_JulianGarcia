// const consulta = (API_KEY) =>{
//     return fetch(`https://api.rawg.io/api/platforms?key=${API_KEY}`) //el fetch sirve para nosotros consultar apis

// }
// consulta(`b9eaae3fa734457fae4b529b81f4769d`)
//     .then(response =>{
//         if(!response.ok){
//             throw new Error('Error en la respuesta')
//         }
//         return response.json()
//     }).then(data => {
//         IteringData(data.results);
//     })

let paginaActual = 1;
let todaInformacion = [];
const limiteItems = 10;

//Funcion que crea las etiquetas en el html en un contenedor 
const crearTarjeta = (juego) => {
    const tarjeta = document.createElement("div");
    tarjeta.className = "tarjeta";

    const imagen = document.createElement("img");
    imagen.src = juego.background_image;
 

    const titulo = document.createElement("h2");
    titulo.innerText = juego.name;

    const lanzamiento = document.createElement("p");
    lanzamiento.innerText = `Lanzamiento: ${juego.released || "No disponible"}`;

    const actualizacion = document.createElement("p");
    actualizacion.innerText = `Última actualización: ${juego.updated || "No disponible"}`;

    const plataformas = document.createElement("p");
    plataformas.innerText = "Plataformas: " + (juego.platforms.map(p => p.platform.name).join(", "));

    const tiendas = document.createElement("div");
    tiendas.innerHTML = "<strong>Tiendas:</strong><br>";
    if (juego.stores?.length > 0) { //si encuentra tiendas cree una etiqueta a, y esa etiqueta va ser el nombre de la tienda, y va llevar al link que encontro en la lsita
        juego.stores.forEach(store => {
            const enlace = document.createElement("a");
            enlace.href = `https://${store.store.domain}`;
            enlace.innerText = store.store.name
            tiendas.appendChild(enlace);
        });
    } else {
        tiendas.innerHTML += "No disponible";
    }
    //Agrega cada elemento y se ingresara a la plantilla de nuestra pagina
    tarjeta.appendChild(imagen);
    tarjeta.appendChild(titulo);
    tarjeta.appendChild(lanzamiento);
    tarjeta.appendChild(actualizacion);
    tarjeta.appendChild(plataformas);
    tarjeta.appendChild(tiendas);

    return tarjeta; //Va devolver todos los elementos definidos para la tarjeta
};

const plantillaPagina = (pagina) => {
    //borramos todo loq que hay en la pagina actual
    document.body.innerHTML = "";

    //crea el titulo
    const titulo = document.createElement("h1")
    titulo.innerText = "Catálogo de Juegos"
    document.body.appendChild(titulo)
    
    //pone los datos osea los juegos
    const indexInicio = (pagina - 1) * limiteItems;
    const indexLimite = indexInicio + limiteItems;
    const datosPaginaActual = todaInformacion.slice(indexInicio, indexLimite) //.slice = toma lo que hay entre los index

    //Creamos el contenedor que va contner todos los elementos que definimos en crear tarjeta
    const contenedor = document.createElement("div")
    contenedor.style.display="flex";
    contenedor.style.flexWrap = "wrap"
    contenedor.style.justifyContent ="center";
    //Recorre por cada juego que muestra y crea una tarjeta individual por cada uno y lo agrega al final del contenedor que acabamos de crear
    datosPaginaActual.forEach(juego => {
        const tarjeta = crearTarjeta(juego);
        contenedor.appendChild(tarjeta)
    })
    
    //Boton de siguiente
    const siguienteBtn = document.createElement("button")
    siguienteBtn.innerText = "Siguiente";
    siguienteBtn.disabled = indexLimite >= todaInformacion.length;
    siguienteBtn.onclick = () =>{
        paginaActual++;
        plantillaPagina(paginaActual)
    }
    //Boton de Anterior
    const anteriorBtn = document.createElement("button")
    anteriorBtn.innerText = "Anterior";
    anteriorBtn.disabled = pagina === 1;
    anteriorBtn.onclick = () =>{               
        paginaActual--;                                                                                         
        plantillaPagina(paginaActual)
    }
    
    document.body.appendChild(contenedor);
    document.body.appendChild(anteriorBtn);
    document.body.appendChild(siguienteBtn);
}

const IteringData = (data) =>{

    todaInformacion = data; // Guardamos todos los resultados
    plantillaPagina(paginaActual); // Mostramos la primera página
}

const consulta = async(API_KEY) => {
    let response = await fetch(`https://api.rawg.io/api/games?key=${API_KEY}&page_size=30&page=93`);
    if(!response.ok){
        throw new Error('Error en la respuesta')
    }
    response = await response.json()
    IteringData(response.results);
}
consulta(`b9eaae3fa734457fae4b529b81f4769d`)