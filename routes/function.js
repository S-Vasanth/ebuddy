const express = require('express')

const router=express.Router()

const authController=require('./../controllers/nodal')



router.post('/nodal',authController.nodal)

module.exports=router