import { describe, it, expect } from 'vitest';
import server from './main';

describe('GET /paints', () => {
  server.listen({ port: 3000 });
  it('should return a list of paints', async () => {
    const response = await server.inject({
      method: 'GET',
      url: '/paints',
    });

    expect(response.statusCode).toBe(200);
    const responseBody = JSON.parse(response.body);
    expect(responseBody).toHaveProperty('paints');
    expect(Array.isArray(responseBody.paints)).toBe(true);
  });
});