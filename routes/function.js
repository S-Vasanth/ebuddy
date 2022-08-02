const express = require('express')

const router=express.Router()

const nodalController=require('./../controllers/nodal')

const bankController=require('./../controllers/bank')


//const display_complaint=require('./../controllers/nodal')



router.post('/nodal',nodalController.nodal)

router.get('/complaint',nodalController.display_complaint)


router.get('/complaint1',bankController.display_complaint1)

router.post('/nodalreg',nodalController.nodalreg)

router.post('/nodallogin',nodalController.nodallogin)

router.post('/bankreg',bankController.bankreg)

router.post('/banklogin',bankController.banklogin)


router.post('/bank',bankController.bank)


module.exports=router