var express = require('express');
const async = require('hbs/lib/async');
var router = express.Router();
var nodemailer = require('nodemailer')
var novedadesModel = require('../models/novedadesModel');

/* GET home page. */
router.get('/', async function (req, res, next) {

   var novedades = await novedadesModel.getNovedades()

  res.render('index', {
    novedades
  });
});

var nodemailer = require("nodemailer");

router.post('/', async(req, res, next) => {

    var nombre = req.body.nombre;
    var apellido = req.body.apellido;
    var mail = req.body.mail;
    var escribinos = req.body.escribinos;
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

    res.render('index', {
      message: 'Mensaje enviado correctamente'
    });
});


module.exports = router;