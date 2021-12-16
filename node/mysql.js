require('dotenv-defaults/config');
const http = require('http');
const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: process.env.MYSQL_HOST,
    database: process.env.MYSQL_DB,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PSWD,
    connectionLimit: 500,
    waitForConnections: true
});

const keys = [
    'b0df272163997f6b92c4eb',
    '4e861a1037a1d95d4cd1d3',
    '75674a595d831195370e72',
    '5993b084d59e084855211c',
    '043c7c912791c97a3ba212',
    'c2fe2a4318995db9d8df5b',
    '45f0fc00b31a1d65d6632b',
    '02ba46bbbd8b7f1d42d6da',
    'eafa54edb781cf9c3b1014',
    '5085c9d285da04afb00234',
    'ee113cc643370ecb7f24b2',
];

const keysLength = keys.length;

const getRandomNum = (min, max) => {
    return Math.random() * (max - min + 1) + min;
}

// Handle HTTP requests
const requestListener = async (req, res) => {

    res.statusCode = 200;

    try {
        let [rows, fields] = [{}, {}];

        [rows, fields] = await pool.execute(
            'SELECT id, credits FROM credits WHERE `key` = ?',
            [keys[Math.floor(Math.random() * keysLength)]]
        );

        [rows, fields] = await pool.execute(
            'UPDATE credits SET credits = ? WHERE id = ?',
            [rows[0].credits - getRandomNum(5, 25), rows[0].id]
        );

        res.end('ok');

    } catch (e) {
        res.end(`err: ${e.message}`);
        console.log(e);
    }
}

// Run HTTP server
const server = http.createServer(requestListener);
server.keepAliveTimeout = 40000;
server.on('connection', (socket) => {
    socket.setTimeout(40000);
});
server.listen(3000);

