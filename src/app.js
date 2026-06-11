const express = require('express');
const app = express();

app.use(express.json());

// Standard Health Check Endpoint (Crucial for Kubernetes/AWS Load Balancers)
app.get('/health', (req, res) => {
    res.status(200).json({ status: 'UP', timestamp: new Date() });
});

// Root Route
app.get('/', (req, res) => {
    res.status(200).json({ message: 'Software-Dev-1 Architecture Active' });
});

module.exports = app;
