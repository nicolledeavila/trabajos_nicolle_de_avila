 HTML

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>RPG Maker games</title>
        <link rel="stylesheet" href="estilos_web1.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    </head>
<body>
    <header class="header">
        <div class="menu container">
            <!--cambia el logo por algo mas acorde-->
            <a class="logo">
                <img src="imagenes/pngwing.com.png" width="40"/>
                
            </a>
            <!--recuerda hacer que el menu este bajo el logo y guarde las opciones de uso-->
           <input type="checkbox" id="menu"/>
           <labal>
              <img src="imagenes/menu.png" class="menu-icono" alt="">
           </labal>
           <nav class="navbar">
                <ul>
                    <li><a href="#">inicio</a></li>
                    <li><a href="#">informacion</a></li>
                    <li><a href="#">descargas</a></li>
                </ul>
           </nav>
        </div>

        <div class="header-content container" >
            <h1> <span style="color: antiquewhite;"> WELCOME TO RPG Game!</span></h1>
            <a href="#" class="btn-1" >informacion</a>
        </div>
            
    </header>
    

    <section class="game">
        <!--recuerda hacer un movible de varias imagenes-->
        <hr>
        <br>
        <!--contenedor de puntos-->
        <div id="contenedorPuntos" style="text-align:right;">
            <a href="#tarjetaCarrucel-1" id="punto1"><svg xmlns="http://www.w3.org/2000/svg" height="20px" viewBox="0 -960 960 960" width="20px" fill="#e8eaed"><path d="M480.28-96Q401-96 331-126t-122.5-82.5Q156-261 126-330.96t-30-149.5Q96-560 126-629.5q30-69.5 82.5-122T330.96-834q69.96-30 149.5-30t149.04 30q69.5 30 122 82.5T834-629.28q30 69.73 30 149Q864-401 834-331t-82.5 122.5Q699-156 629.28-126q-69.73 30-149 30Zm-.28-72q130 0 221-91t91-221q0-130-91-221t-221-91q-130 0-221 91t-91 221q0 130 91 221t221 91Zm0-312Z"/></svg></a>
            <a href="#tarjetaCarrucel-2" id="punto2"><svg xmlns="http://www.w3.org/2000/svg" height="20px" viewBox="0 -960 960 960" width="20px" fill="#e8eaed"><path d="M480.28-96Q401-96 331-126t-122.5-82.5Q156-261 126-330.96t-30-149.5Q96-560 126-629.5q30-69.5 82.5-122T330.96-834q69.96-30 149.5-30t149.04 30q69.5 30 122 82.5T834-629.28q30 69.73 30 149Q864-401 834-331t-82.5 122.5Q699-156 629.28-126q-69.73 30-149 30Zm-.28-72q130 0 221-91t91-221q0-130-91-221t-221-91q-130 0-221 91t-91 221q0 130 91 221t221 91Zm0-312Z"/></svg></a>
            <a href="#tarjetaCarrucel-3" id="punto3"><svg xmlns="http://www.w3.org/2000/svg" height="20px" viewBox="0 -960 960 960" width="20px" fill="#e8eaed"><path d="M480.28-96Q401-96 331-126t-122.5-82.5Q156-261 126-330.96t-30-149.5Q96-560 126-629.5q30-69.5 82.5-122T330.96-834q69.96-30 149.5-30t149.04 30q69.5 30 122 82.5T834-629.28q30 69.73 30 149Q864-401 834-331t-82.5 122.5Q699-156 629.28-126q-69.73 30-149 30Zm-.28-72q130 0 221-91t91-221q0-130-91-221t-221-91q-130 0-221 91t-91 221q0 130 91 221t221 91Zm0-312Z"/></svg></a>
        </div>
        <br>
        <!--contenedor de carruceles-->
        <div id="conteItemsCarrucel" style="float: left; margin-right: 30px;">
            <div class="itemCarrucel" id="itemCarrucel-1">
                <div class="tarjetaCarrucel" id="tarjetaCarrucel-1">
                     <img src="imagenes/descarga (1).gif" style="width:500px; height:320px;">
                </div>
                <div class="flechasCarrucel">
                    <a href="#itemCarrucel-3">
                        <i><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="M440-240 200-480l240-240 56 56-183 184 183 184-56 56Zm264 0L464-480l240-240 56 56-183 184 183 184-56 56Z"/></svg></i>
                    </a>  
                    <a href="#itemCarrucel-2">
                      <i><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="M383-480 200-664l56-56 240 240-240 240-56-56 183-184Zm264 0L464-664l56-56 240 240-240 240-56-56 183-184Z"/></svg></i>
                    </a> 
                </div>
            </div>
            <!--carrucel 2-->
            <div class="itemCarrucel" id="itemCarrucel-2">
                <div class="tarjetaCarrucel" id="tarjetaCarrucel-2">
                   <img src="imagenes/Undertale Frisk GIF - Undertale Frisk - Temukan & Bagikan GIF.gif" style="width:500px; height:300px;">
                </div>
                <div class="flechasCarrucel">
                    <a href="#itemCarrucel-1">
                        <i><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="M440-240 200-480l240-240 56 56-183 184 183 184-56 56Zm264 0L464-480l240-240 56 56-183 184 183 184-56 56Z"/></svg></i>
                    </a>  
                    <a href="#itemCarrucel-3">
                      <i><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="M383-480 200-664l56-56 240 240-240 240-56-56 183-184Zm264 0L464-664l56-56 240 240-240 240-56-56 183-184Z"/></svg></i>
                    </a> 
                </div>
            </div>
            <!--carrucel 3s-->
            <div class="itemCarrucel" id="itemCarrucel-3">
                <div class="tarjetaCarrucel" id="tarjetaCarrucel-3">
                    <img src="imagenes/Omori by omocat ^^.gif" style="width:500px; height:300px;">
                </div>
                <div class="flechasCarrucel">
                    <a href="#itemCarrucel-2">
                        <i><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="M440-240 200-480l240-240 56 56-183 184 183 184-56 56Zm264 0L464-480l240-240 56 56-183 184 183 184-56 56Z"/></svg></i>
                    </a>  
                    <a href="#itemCarrucel-1">
                      <i><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#e8eaed"><path d="M383-480 200-664l56-56 240 240-240 240-56-56 183-184Zm264 0L464-664l56-56 240 240-240 240-56-56 183-184Z"/></svg></i>
                    </a> 
                </div>
            </div>
           
        </div>
         
        <!--texto de inicio-->
        <div id="textoInicio">
            <h2> ¿Que es RPG?</h2>
            <p>
                ¿Que es un RPG? RPG es un acrónimo que proviene de las palabras en inglés <span style="color: blueviolet;"> "Role-Playing Game" </span>,<br> 
                que en español significa juego de rol. En los videojuegos, un <span style="color: blueviolet;"> RPG </span> es un género que se caracteriza por ofrecer al jugador la posibilidad <br>
                de asumir el papel de uno o varios personajes en un mundo ficticio.
            </p>
            <a target="_blank" href="https://www.pccomponentes.com/que-es-un-rpg">. mas informacion.</a>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <hr>
        
        <div class="game-content container">
            <h2 style="text-align: center;"> informacion </h2>  
            <hr>
            <br>
            <br>    
            <h2 style="margin-left:50px;">Undertale</h2>
            <div>
                <div class="contenedor de informacion" style="display: flex;" style="align-items: center;">
                    <img style="margin-left: 50px;" src="imagenes/descarga (1).jpg" width="200" height="200" style="text-align:right;"> 
                    
                    <p id="textTarea"  style="text-align:left;">Undertale es un juego de rol en 2D de 2015 creado por el desarrollador independiente estadounidense Toby Fox.
                        El jugador controla a un niño que ha caído al subsuelo: una gran región aislada bajo la superficie de la Tierra, separada por una barrera mágica. El jugador
                        se encuentra con varios monstruos durante su viaje de regreso a la superficie, aunque algunos monstruos pueden involucrar al jugador en una pelea. El sistema
                        de combate involucra al jugador navegando a través de los ataques mini bullet hell por parte del oponente. Se puede optar por pacificar y salvar a los monstruos
                        o someterlos para matarlos. Estas elecciones afectan el juego, el diálogo, los personajes y la historia cambiando según las elecciones tomadas previamente.            
                        Fuera de algunas ilustraciones, Fox desarrolló la totalidad del juego por sí mismo, incluido el guion y la música.
                    </p> 
                    
                </div>
                <!--cuadro de informacion de undertale-->
                <style>
                    table{
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td{
                        border: 1px solid rgb(255, 255, 255);
                        padding: 8px;
                        text-align: center;
                    }
                </style> 
                <h1 style="margin-left: 30px;">Undertale</h1>
                <h3> informacion general</h3>
                <tr>
                    <th></th>

                   | <th>desarrollador</th> |
                    <th>toby Fox</th>|
                </tr>
                <tr>
                    |<td>Distribuidor</td> |
                    |<td>Fangamer y 8-4</td>|
                    
                </tr>
            </div>
            <div class="game-group">
                <div clas="game-content container">
                    <br>
                    <br>    
                    <h2>OMORI</h2>
                    <img src="imagenes/Omori Font.jpg" width="170" height="140">
                    <br>
                    <br>
                    <a> <h2 id="tituloCuadro" style="margin-left:30px ;">OMORI</h2></a>
                    <br>
                    <a><h3 id="subT" style="margin-left:30px ;">informacion general</h3></a>
                    <br>
                    <a> <h4 id="subT2" style="margin-left:30px ;">Creador</h4></a>
                    <a><h4 id="subT3">OMOCAT</h4></a>
                    <br>
                    <a> <h4 id="subT4" style="margin-left:30px ;">Desarrollador</h4></a>
                    <a><h4 id="subT5">OMOCAT</h4></a>
                    <br>
                    <a> <h4 id="subT6" style="margin-left:30px ;">Distribuidor</h4></a>
                    <a><h4 id="subT7">PLAYISM</h4></a>
                    <br>
                    <a> <h4 id="subT8" style="margin-left:30px ;">Diseñador</h4></a>
                    <a><h4 id="subT9">OMOCAT <br> Emily"EMS"Shaw</h4></a>
                    <br>
                    <a> <h4 id="subT10" style="margin-left:30px ;">Director</h4></a>
                    <a><h4 id="subT11">OMOCAT</h4></a>
                    <br>
                    <a> <h4 id="subT12"  style="margin-left:30px;">Programadores</h4></a>
                    <br>
                    <a><h4 id="subT13" style="margin-left:30px;" >ARCHEIA <br>Cesar"OCEAN'S DREAM"<br>RENDON<br>keane"MELON KID"park<br>andrew"SLEEPYKUYA"<br>vance<br>whithey E."YN" White<br>Cachi "CZO"cordova<br>
                    luca"BLUEMOON"<br>mastroianni<br>PRIDE-AKUN<br>kimberly vance<br>rochelle Concepcion</h4></a>
                    <br>
                    <a> <h4 id="subT14"  style="margin-left:30px;">artistas</h4></a>
                    <br>
                    <a><h4 id="subT15" style="margin-left:30px;" > OmoCat<br>Emily "EMS" Shaw<br>charlene"MINCED"lu<br>kimberly vance</h4></a>
                    <br>
                    <a> <h4 id="subT16" style="margin-left:30px ;">escritor</h4></a>
                    <br>
                    <a><h4 id="subT17" style="margin-left:30px;" >andrew Batino<br>AIVI<br>PRIDE-kun</h4></a>
                    <br>
                    <a> <h3 id="subT18" style="margin-left:30px ;">DATOS DE JUEGO</h3></a>
                    <br>
                    <a> <h4 id="subT19" style="margin-left:30px ;">Genero</h4></a>
                    <a><h4 id="subT20">RPG</h4></a>
                    <br>
                    <a> <h4 id="subT21" style="margin-left:30px ;">Idiomas</h4></a>
                    <br>
                    <a><h4 id="subT22" style="margin-left:30px ;"  >ingles,<br> Japones,<br> Coreano,<br> Chino(simplificado)</h4></a>
                    <br>
                    <a> <h4 id="subT23" style="margin-left:30px ;">Modos de juego</h4></a>
                    <a><h4 id="subT24">un jugador</h4></a>
                    <br>
                    <a> <h4 id="subT25" style="margin-left:30px ;">Plataformas</h4></a>
                    <br>
                    <a><h5 id="subT26" style="margin-left:30px ;"> Microsoft Windows<br>OS X</h5></a>
                </div>
                <div clas="game-content container">
                    
                    <br>
                    <br>    
                    <h2>deltarune</h2>
                    <img src="imagenes/descarga (1).jpg" width="170" height="140"> 
                     <p>
                        <!--colocar aqui informacion sobre udertale, prologo y cosas asi-->
                    </p>
                </div>
            </div>
            <!--colocar dejajo de cada juego con un URL de la info del juego-->
            <a style="margin-left: 20PX;" href="#">informacion</a>
        </div>


    </section>
   <!--los coloque por que el texto se subia y superponia sobre lo de arriva-->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <!--el inicio de la pagina-->
    <main class="inicio">
        
        <div class="inicio-content container">
           <h2>RPG Game inicio </h2> 
           <br>

           <div class="inicio-group">
             <div class="inicio-1">
                 <img src="imagenes/Undertale.png"  width="30"   alt="">
                 <h3> servicio 1</h3>
             </div>
             <div class="inicio-1">
                 <img src="imagenes/Undertale.png"  width="30"   alt="">
                 <h3> servicio 2</h3>
             </div>
             <div class="inicio-1">
                 <img src="imagenes/Undertale.png"  width="30"   alt="">
                 <h3> servicio 3</h3>
             </div>
                
            </div>
           
        </div>


    </main>
    
  

</body>
</html>


CSS


@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    list-style: none;
}


body{
    font-family: "Poppins", sans-serif;
}

.container{
    max-width: 12000px;
    max-height:1000px;
    margin: 0 auto; 
}

.header{
    background-image: linear-gradient(
        rgba(0,0,0,0.4),
        rgba(0,0,0,0.4)),
        url(imagenes/6e6bb860-12cb-4a65-af5a-42fc2540a750.gif);
    background-position: center bottom;
    background-repeat:no-repeat;
    background-size: cover ;
    min-height: 90vh;
    display: flex;
    align-items: center;
}

.menu{
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    display: flex;
    align-items: center;
}

.logo{
    margin-right: 20px;
    color: antiquewhite;
    font-size: 20px;
    font-weight: 800;
}

.menu .navbar ul li {
    position:relative;
    float:left;
}

.menu .navbar ul li a:hover{
   color:rgb(126, 97, 154);
}

.menu .navbar ul li a {
    font-size: 18px;
    padding: 20px;
    display: block;
    color:antiquewhite;
    font-weight: 600;
}

#menu{
    display: none;
}

.menu-icono{
    margin-right: 20px;
    width: 25px;

}

.menu label{
    cursor: pointer;
    display: none;
}

body{
    background-color:black;
    color: #fff;
}

.header-content{
    text-align: center;
    
}

.header-content h1{
    font-size: 50px;
    line-height: 58px;
    color:rgb(255, 255, 255);
    text-transform: uppercase;
    margin-bottom: 10px;
}

.header-content p{
    font-size: 16px;
    color: antiquewhite;
    padding: 0 250px;
    margin-bottom: 25px;
}

.btn-1 {
    display: inline-block;
    padding: 11px 35px;
    background-color: rgb(2, 255, 255);
    color: rgb(0, 0, 0);
    text-transform: uppercase;

}

.btn-1:hover{
    background-color: rgb(6, 81, 81);
}

/* aca inicia el carrucel*/

#conteItemsCarrucel{
    margin-top: 10px;
    margin-right: 20px;
    margin-left: 20px; 
    height: 300px;
    width: 500px;
    overflow: hidden;
}

.itemCarrucel{
   
    height: 300px;
    position: relative;
    
}


.tarjetaCarrucel{
    background-color: aqua;
    height: 300px;
    

}

.flechasCarrucel{
    background-color: rgb(18, 114, 114, 0.3);
    height: 370px;
    position: absolute;
    top:0;
    height:300px;
    width: 100%;
    display:flex;
    align-items:center;
    justify-content: space-between;
    padding: 20px;
}



A{
    text-decoration: none;
}

#contenedorPuntos{
    background-color: rgba(0, 0, 0, 0);
    margin-left: 230px;
    margin-right:100px;
    display:inline-block;
    justify-content: space-evenly;
}

#contenedorPuntos{
    font-size: 1em;
    font-style:none;
    margin-bottom:5px;
    
}
/*soluciono luego*/
contenedorPuntos:hover{
    
    width:20px;
    height:20px;
    border-radius:50%;
    background-color: aqua;
    box-shadow:0 0 10px rgb(72, 255, 255);
    transition: box-shadow 0,3S;
    

}


punto2:hover{
    
    width:30px;
    height:30px;
    border-radius:60%;
    background-color: aqua;
    box-shadow:0 0 10px rgb(72, 255, 255);
    transition: box-shadow 0,3S;

    

}

punto3:hover{
    
    width:20px;
    height:20px;
    border-radius:50%;
    background-color: aqua;
    box-shadow:0 0 10px rgb(72, 255, 255);
    transition: box-shadow 0,3S;
    

}

#textTarea{
  
    background-color: black;
    

}

/*cuadro de informacion OMORI*/

#tituloCuadro{
    display: inline-block;
    padding: 6px 133.5px;
    background-color: rgb(138, 238, 238);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
}

#subT{
    
    display: inline-block;
    padding: 6px 43px;
    background-color: rgb(183, 251, 251);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
}

#subT2{
    
    display: inline-block;
    padding: 6px 39px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
}

#subT3{
    
    display: inline-block;
    padding: 6px 48px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}

#subT4{
    
    display: inline-block;
    padding: 6px 0.5px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
}

#subT5{
    
    display: inline-block;
    padding: 6px 48px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}


#subT6{
    
    display: inline-block;
    padding: 6px 16.5px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
}

#subT7{
    
    display: inline-block;
    padding: 6px 49px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}

#subT8{
    
    display: inline-block;
    padding: 39px 28.6px;
    height: 120px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
}

#subT9{
    
    display: inline-block;
    padding: 8px 5px;
    height: 120px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}


#subT10{
    
    display: inline-block;
    padding: 6px 37.6px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
}

#subT11{
    
    display: inline-block;
    padding: 6px 47.7px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}

#subT12{
    
    display: inline-block;
    padding: 2px 92px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}

#subT13{
    
    display: inline-block;
    padding: 8px 61.2px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}
#subT14{
    
    display: inline-block;
    padding: 2px 135.7px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}

#subT15{
    
    display: inline-block;
    padding: 8px 78px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}

#subT16{
    
    display: inline-block;
    padding: 2px 135.9px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}

#subT17{
    
    display: inline-block;
    padding: 8px 109.2px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
}

#subT18{
    
    display: inline-block;
    padding: 2px 85.6px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}

#subT19{
    
    display: inline-block;
    padding: 8px 50px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
}

#subT20{
    
    display: inline-block;
    padding: 8px 74.6px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}

#subT21{
    
    display: inline-block;
    padding: 8px 143px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
}

#subT22{
    
    display: inline-block;
    padding: 8px 69.4px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}

#subT23{
    
    display: inline-block;
    padding: 8px 20px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
}

#subT24{
    
    display: inline-block;
    padding: 8px 15.5px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}

#subT25{
    
    display: inline-block;
    padding: 8px 120px;
    background-color: rgb(91, 206, 206);
    color: rgb(0, 0, 0);
}

#subT26{
    
    display: inline-block;
    padding: 8px 88.6px;
    background-color: rgb(189, 237, 237);
    color: rgb(0, 0, 0);
    text-transform: uppercase;
    
}
   
    

  
    

