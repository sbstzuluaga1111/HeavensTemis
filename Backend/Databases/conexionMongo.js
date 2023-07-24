import mongoose from "mongoose"

const conexionMongoBD = async () =>{
    try {
        await mongoose.connect(process.env.MONGO_URI,{
            useNewUrlParser: true,
            useUnifiedTopology: true,
        })
        console.log(`BD Mongo Coneted`);
    } catch (error) {
        console.log(error);
        throw new Error(`DB can't inicialices`)
    }
}

export {
    conexionMongoBD
}