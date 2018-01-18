var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var mg = require('nodemailer-mailgun-transport');

var auth = {
    auth: {
        api_key: process.env.MAILGUN_APIKEY,
        domain: process.env.MAILGUN_DOMAIN
    }
};

var nodemailerMailgun = nodemailer.createTransport(mg(auth));


router.post('/askAQuestion', function (req, res, next) {

    nodemailerMailgun.sendMail({
        from: 'info@mail.cryptochains.in',
        to: 'help@cryptochains.in',
        subject: 'New User Query',
        text: 'From: ' + req.body.email + ' Question: ' + req.body.question
    }, function (err, info) {
        if (err) {
            res.status(500).json({message: err.message})
        }
        else {
            res.json({message: "Thanks."})
        }
    });

});

module.exports = router;
