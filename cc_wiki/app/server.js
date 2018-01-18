var Hazel = require("hazel-wiki").app;
var config = require("./config.default.js");
var StorageProvider = require("hazel-wiki").storageProvider;

var app = new Hazel(config, StorageProvider);
var server = app.server;

server.listen(3010, function listen() {
    console.log("✔ Hazel server listening at 3010 ");
});