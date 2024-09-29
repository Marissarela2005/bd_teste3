// db.js
const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',  // Altere se necessário
    user: 'root',       // Seu usuário do MySQL
    password: '',       // Sua senha do MySQL
    database: 'EDUCIRS'  // Nome do seu banco de dados
});

db.connect(err => {
    if (err) {
        console.error('Erro ao conectar ao banco de dados:', err);
        return;
    }
    console.log('Conectado ao banco de dados MySQL');
});

module.exports = db;
