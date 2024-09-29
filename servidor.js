// server.js
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const db = require('./db');

const app = express();
const PORT = 3000;

app.use(cors());
app.use(bodyParser.json());

// Rota para listar todos os projetos
app.get('/projetos', (req, res) => {
    db.query('SELECT * FROM Projetos', (err, results) => {
        if (err) return res.status(500).send(err);
        res.json(results);
    });
});

// Rota para inserir um novo projeto
app.post('/projetos', (req, res) => {
    const { nome, ano, resumo, id_pesquisador } = req.body;
    db.query('INSERT INTO Projetos (nome, ano, resumo, id_pesquisador) VALUES (?, ?, ?, ?)', 
        [nome, ano, resumo, id_pesquisador], (err, results) => {
        if (err) return res.status(500).send(err);
        res.status(201).json({ id_projeto: results.insertId, nome, ano, resumo, id_pesquisador });
    });
});

// Rota para editar um projeto
app.put('/projetos/:id', (req, res) => {
    const { id } = req.params;
    const { nome, ano, resumo, id_pesquisador } = req.body;
    db.query('UPDATE Projetos SET nome = ?, ano = ?, resumo = ?, id_pesquisador = ? WHERE id_projeto = ?', 
        [nome, ano, resumo, id_pesquisador, id], (err, results) => {
        if (err) return res.status(500).send(err);
        res.json({ id_projeto: id, nome, ano, resumo, id_pesquisador });
    });
});

// Rota para excluir um projeto
app.delete('/projetos/:id', (req, res) => {
    const { id } = req.params;
    db.query('DELETE FROM Projetos WHERE id_projeto = ?', [id], (err, results) => {
        if (err) return res.status(500).send(err);
        res.sendStatus(204); // No Content
    });
});

// Iniciar o servidor
app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});
