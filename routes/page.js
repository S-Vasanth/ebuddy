const express = require("express");

const router = express.Router();

router.get('/',(req,res)=>{
    res.render('index')
  })
  
router.get('/nodal',(req,res)=>{
    res.render('nodal')
  })

router.get('/adminlogin',(req,res)=>{
  res.render('adminlogin')
 })
 
router.get('/studentlogin',(req,res)=>{
  res.render('studentlogin')
 })

  
module.exports = router;