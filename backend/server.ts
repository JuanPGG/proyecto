import express from 'express';
import cors from 'cors';

const app = express();
const port = 3000;

app.use(cors()); //enabled CORS

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
