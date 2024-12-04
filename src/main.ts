import fastify from 'fastify';
import { listPaints } from './endpoints';

const server = fastify({
  logger: true,
});

server.get('/paints', function (request, reply) {
  const paints = listPaints(request);
  reply.send({ paints });
});

export default server;

if (require.main === module) {
  server.listen({ port: 3000 }, function (err) {
    if (err) {
      server.log.error(err);
      process.exit(1);
    }
  });
}