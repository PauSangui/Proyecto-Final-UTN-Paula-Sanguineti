var express = require('express');
const async = require('hbs/lib/async');
var router = express.Router();
var nodemailer = require('nodemailer')
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  novedades = novedades.splice(0,5);//selecciona los primeros 5 elementos del array
  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.url(novedad.img_id, {
        width: 460,
        crop: 'fill'
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return {
        ...novedad,
        imagen: '/images/noImgUploaded.png'
      }
    }
  });
  res.render('index', {
    novedades
  });
});

var nodemailer = require("nodemailer");

router.post('/', async(req, res, next) => {

    var nombre = req.body.nombre;
    var apellido = req.body.apellido;
    var email = req.body.email;
    var mensaje = req.body.mensaje;
    var telefono = req.body.telefono;

    console.log(req. body);

    var obj = {
        to: 'paula.sanguineti1@gmail.com',
        subject: 'Contacto desde la web',
        html: nombre + " " + apellido + " se contacto a traves de la web y quiere mas info a este correo: " + email + ". <br> Ademas, hizo el siguiente comentario: " + mensaje + ".<br> Su telefono celular es " + telefono
    }

    var transport = nodemailer.createTransport({
      host: process.env.SMTP_HOST,
      port: process.env.SMTP_PORT,
      auth: {
        user: process.env.SMTP_USER,
        pass: process.env.SMTP_PASS
      }
    });

    var info = await transport.sendMail(obj);

    // res.render('index', {
    //   message: 'Mensaje enviado correctamente'
    // });

    res.json({
      message: 'Mensaje enviado correctamente',
    });

});


module.exports = router;