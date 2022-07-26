const express = require('express')

const router=express.Router()

const authController=require('./../controllers/nodal')

//const display_complaint=require('./../controllers/nodal')



router.post('/nodal',authController.nodal)

router.get('/complaint',authController.display_complaint)


module.exports=router