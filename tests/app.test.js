const request = require('supertest');
const app = require('../src/app');

describe('Core Architecture Endpoints', () => {
    it('should return a 200 OK on the /health route', async () => {
        const response = await request(app).get('/health');
        expect(response.statusCode).toBe(200);
        expect(response.body).toHaveProperty('status', 'UP');
    });

    it('should return a 200 OK on the root route', async () => {
        const response = await request(app).get('/');
        expect(response.statusCode).toBe(200);
        expect(response.body.message).toBe('Software-Dev-1 Architecture Active');
    });
});
