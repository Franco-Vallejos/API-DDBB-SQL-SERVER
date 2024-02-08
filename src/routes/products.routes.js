import { Router } from "express"
import { getCalendar, getPersonal, createNewProduct} from "../controllers/products.controller.js";

const router = Router();

router.get('/api/query/:month', getCalendar);

router.get('/api/query/personal/all', getPersonal)

router.post('/api/query', createNewProduct);

router.get('/api/query');

router.delete('/api/query');

router.put('/api/query');

export default router;


