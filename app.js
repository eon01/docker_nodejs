var http = require('http');

var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  text = "Nodejs is running. Version : :" + process.versions.node
  response.end(text);
});

var port = process.env.PORT || 8080;
server.listen(port);

console.log("Docker running Nodejs server. Port http://127.0.0.1:" + port + "/");
console.log("For more information see Docker hosts/ports documentation");
