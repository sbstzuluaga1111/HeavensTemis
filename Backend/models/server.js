import express from "express"
import cors from "cors"
import { conexionMongoBD } from "../Databases/conexionMongo.js"
import { conexionMySql } from "../Databases/conexionSQL.js"

class Server{
    constructor(){
        this.app = express()
        this.app.use(express.json())
        this.port = process.env.PORT

        this.residenciasPath = "/residencias/API"
        this.espiritaulPath = "/espiritualidad/API"

        this.conexionDB()
        this.middleware()
        this.routes()
    }

    routes(){
        this.app.use(this.residenciasPath, )
        this.app.use(this.espiritaulPath, )
    }

    middleware(){
        this.app.use(cors())
        this.app.use(express.static('public'))
    }
    
    async conexionDB(){
        await conexionMongoBD()
        await conexionMySql()
    }

    listen(){
        this.app.listen(this.port,()=>{
            console.log(`SERVER RUNNING IN PORT ${this.port}`);
        })
    }
}

export {
    Server
}