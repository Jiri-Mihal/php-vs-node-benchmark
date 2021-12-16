const http = require('http');

// Handle HTTP requests
const requestListener = async (req, res) => {
    res.statusCode = 200;
    res.end('Hello World!');
}

// Run HTTP server
const server = http.createServer(requestListener);
server.keepAliveTimeout = 40000;
server.on('connection', (socket) => {
    socket.setTimeout(40000);
});
server.listen(3000);