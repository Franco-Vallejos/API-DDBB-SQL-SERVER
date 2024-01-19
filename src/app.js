import Express  from "express";
import config from "./config.js";
import cors from 'cors'

import productsRouter from './routes/products.routes.js'


const app = Express();
app.set('port', config.port);
app.use(cors());
app.use(Express.json());
app.use(Express.urlencoded({extended : false}));
app.use(productsRouter);

export default app;