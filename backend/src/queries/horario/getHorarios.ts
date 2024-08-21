import { createConnection } from '../../connection/connection';

type Response = { data?: unknown };

export const getHorarios = async (): Promise<Response> => {
  const connection = await createConnection();
  const response: Response = {};
  try {
    const [rows, _] = await connection.execute('SELECT * FROM horario');
    response.data = rows;
  } catch (error) {
    console.error('Error al consultar los datos de la tabla Horario', error);
  } finally {
    // Cierra la conexión cuando ya no la necesites
    await connection.end();
  }
  return response;
};
