import express from 'express';
import { getHorarios } from './src/queries/horario/getHorarios';

const app = express();
const port = 3000;

app.get('/horario', async (_, res) => {
  try {
    const { data } = await getHorarios();
    res.json(data);
  } catch (error) {
    console.error('Error realizando la consulta:', error);
    res.status(500).send('Error en el servidor');
  }
});

app.listen(port, () => {
  console.log(`Servidor ejecutándose en http://localhost:${port}`);
});
