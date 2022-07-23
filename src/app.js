const express= require("express")

const db=require('./../db')
const path = require("path");
const dotenv = require("dotenv");
dotenv.config({ path: "./.env" });





const app=express()


app.use(express.json());
app.use(express.urlencoded({ extended: false }));



const publicDirectory = path.join(__dirname,'./../public')


app.use(express.static(publicDirectory))

app.set('view engine','hbs')

const getdb=db.getConnection()
getdb.connect((error)=>{
  if(error){
    console.log(error)
  }else{
    console.log("Database connected")
  }
})

app.use("/",require('./../routes/page'))

app.use("/auth",require('./../routes/function'))

//home--->localhost:5001/


app.listen(5001,()=>{
    console.log("server listen on 5001")
})