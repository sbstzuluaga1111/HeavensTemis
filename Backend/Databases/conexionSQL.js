import mysql from "promise-mysql"


const conexionMySql = async () =>{
    const conecionSQl = await mysql.createConnection({
        host: process.env.HOST,
        database: process.env.DATABASE,
        user: process.env.USUARIO,
        password: process.env.PASSWORD,
    })
}

export {
    conexionMySql
}