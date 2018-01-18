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
        subject: 'New User Query from: ' + req.body.email,
        'h:Reply-To': req.body.email,
        html: '<p>From: </p><p>' + req.body.email + '</p><br/><p> Question: </p><p>' + req.body.question + '</p>'
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
