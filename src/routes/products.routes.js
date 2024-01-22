import { Router } from "express"
import { getProducts, createNewProduct} from "../controllers/products.controller.js";

const router = Router();

router.get('/api/query/:month', getProducts);

router.post('/api/query', createNewProduct);

router.get('/api/query');

router.delete('/api/query');

router.put('/api/query');

export default router;


