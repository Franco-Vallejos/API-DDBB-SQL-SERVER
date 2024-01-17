import sql from "mssql"

const dbSettings = {
    type: 'default',
    user: 'calendar',
    password: 'sqlcalendar',
    server: 'localhost',
    database: 'calendar',
    encrypt: true,
    trustServerCertificate: true,
}

export async function getConnection() {
    try{
        const pool = await sql.connect(dbSettings);
        return pool;
        
    }catch(error){
        console.log(error);
    }
}

getConnection();

export {sql};