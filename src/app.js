import Express  from "express";
import config from "./config.js";
import cors from 'cors'

import productsRouter from './routes/products.routes.js'


const app = Express();
app.set('port', config.port);
app.use(Express.json());
app.use(Express.urlencoded({extended : false}));
app.use(productsRouter);
app.use(cors());

export default app;