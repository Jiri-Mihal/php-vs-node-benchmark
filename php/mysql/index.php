<?php
$driver = 'mysql';
$host = '<ip-address-of-your-mysql-server>';
$db   = 'benchmark_db';
$user = 'user';
$pswd = '<your-database-user-password>';

$keys = [
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

$keysLength = count($keys);

try {
    $dsn = "$driver:host=$host;dbname=$db";
    $pdo = new PDO($dsn, $user, $pswd);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = $pdo->prepare('SELECT id, credits FROM credits WHERE `key` = ?');
    $query->execute([$keys[rand(0, $keysLength - 1)]]);
    $row = $query->fetch(PDO::FETCH_ASSOC);

    $query = $pdo->prepare('UPDATE credits SET credits = ? WHERE id = ?');
    $query->execute([$row['credits'] - rand(5, 25), $row['id']]);

    echo 'ok';

} catch (PDOException $e) {
    echo 'err: ' . $e->getMessage();
}