import bcryptjs from "bcryptjs"

const getSql = async (req,res) => {
    try {
        
    } catch (error) {
        console.log(error);
        res.status(500)
        res.send(error.message)
    }
}

const getOneSql = async (req,res) => {
    try {
        
    } catch (error) {
        console.log(error);
        res.status(500)
        res.send(error.message)
    }    
}

const postSql = async (req,res,next) => {
    try {
        
    } catch (error) {
        console.log(error);
        res.status(500)
        res.send(error.message)
    }    
}

const deleteSql = async (req,res) => {
    try {
        
    } catch (error) {
        console.log(error);
        res.status(500)
        res.send(error.message)
    }    
}

const updateSql = async (req,res,next) => {
    try {
        
    } catch (error) {
        console.log(error);
        res.status(500)
        res.send(error.message)
    }    
}

export {
    getSql,getOneSql,postSql,deleteSql,updateSql
}