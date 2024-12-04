import { FastifyRequest } from 'fastify';

interface paints {
	name: string;
	color: string;
}
const paints = [
	{
		name: 'red',
		color: '#FF0000'
	},
	{
		name: 'green',
		color: '#00FF00'
	},
	{
		name: 'blue',
		color: '#0000FF'
	}
];

export function listPaints(request: FastifyRequest): paints[] {
	request.log.info('List paints');
	return paints;
}
