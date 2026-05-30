import mysql, { type ConnectionOptions, type Connection } from 'mysql2/promise';
import dotenv from 'dotenv';
dotenv.config();

const connectionConfig: ConnectionOptions = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_DATABASE,
};

export const createConnection = async (): Promise<Connection> => {
  const connection = await mysql.createConnection(connectionConfig);
  return connection;
};
