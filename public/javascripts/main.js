// Barra 'header' responsive
const nav = document.querySelector('.nav-menu');
const toggle = document.querySelector('.nav-toggle');
toggle.onclick = function(){
    nav.classList.toggle('show-nav')
}

// (modo responsive) Cuando clickeo las secciones de la barra, la barra desaparece pa dejarme ver el contenido

const navLink = document.querySelectorAll('.nav-link')

function linkAction(){
    const navMenu = document.querySelector('.nav-menu')
    navMenu.classList.remove('show-nav')
}
navLink.forEach(n => n.addEventListener('click', linkAction))

// Mantener el color de las palabras 'CAT, blog. etc' cuando clickeo (hace como que se mantiene en esa seccion)

const linkColor = document.querySelectorAll('.nav-link')
function colorLink(){
    if(linkColor){
        linkColor.forEach(L => L.classList.remove('active'))
        this.classList.add('active')
    }
}
linkColor.forEach(L => L.addEventListener('click', colorLink))
