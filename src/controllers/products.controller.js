import { getConnection, sql} from "../database/connection.js";

export const getProducts = async (req, res) => {
    try{
        const {dni} = req.query;
        const {month} = req.params;
        const pool = await getConnection();
        let result;
        if(dni){
            result = await pool.request()
            .query("exec [api].showPersonalCalendar N'" + month + "', "+ dni +";");    
        }else{
            result = await pool.request()
            .query("exec [api].showCalendar N'" + month + "' ;");

        }
        res.json(result.recordsets);
    }catch(error){
        res.status(500);
        res.send(error.message);
        return;
    }
};

export const createNewProduct = async (req, res) => {
    const {dia, tm, tt} = req.body;

    if(dia == null){
        return res.status(400).json('Bad request. Please, specify the day');
    }
    try{
        const pool = await getConnection();

        await pool.request()
            .input("dia", sql.Int, dia)
            .input("TM", sql.VarChar, tm)
            .input("TT", sql.VarChar, tt)
            .query("INSERT INTO monthTurn (dia, tt, tm) VALUES (@dia, @tt, @tm)");
        }catch(error){
            res.status(500);
            res.send(error.message);
            return;         
        }
        console.log(dia, tm, tt);
        res.json('productoos');
}