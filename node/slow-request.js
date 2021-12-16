const http = require('http');

const sleep = (ms) => {
    return new Promise((resolve) => {
        setTimeout(resolve, ms);
    });
}

// Handle HTTP requests
const requestListener = async (req, res) => {

    await sleep(3000);

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

