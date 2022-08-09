const express = require('express')

const router=express.Router()

const nodalController=require('./../controllers/nodal')

const bankController=require('./../controllers/bank')

const aadharController=require('./../controllers/aadhar')


const nclbController=require('./../controllers/nclb')



//const display_complaint=require('./../controllers/nodal')



router.post('/nodal',nodalController.nodal)

router.get('/complaint',nodalController.display_complaint)


router.get('/complaint1',bankController.display_complaint1)

router.get('/showdetailsfor_nclb',nclbController.showdetailsfor_nclb)



router.get('/aadhar_display',aadharController.display_aadhar)


router.post('/nodalreg',nodalController.nodalreg)

router.post('/nodallogin',nodalController.nodallogin)

router.post('/bankreg',bankController.bankreg)

router.post('/banklogin',bankController.banklogin)


router.post('/bank',bankController.bank)


router.post('/aadharreg',aadharController.aadharreg)

router.post('/aadharlogin',aadharController.aadharlogin)



router.post('/nclblogin',nclbController.nclblogin)

router.post('/nclbreg',nclbController.nclbreg)

////////////////////////////////////////


router.post('/nodalstatus',nodalController.nodalstatus)


router.post('/nodalstatus1',nodalController.nodalstatus1)

router.post('/nodalstatus2',nodalController.nodalstatus2)


router.post('/aadharaccept',nodalController.aadharaccept)

router.post('/aadharprocess',nodalController.aadharprocess)

router.post('/aadharcompleted',nodalController.aadharcompleted)


router.post('/aadharhide',nodalController.aadharhide)



router.post('/bankhide',nodalController.bankhide)

router.post('/bank',bankController.bank)

router.post('/fetchdata',bankController.fetchdata)

router.post('/nclb',nclbController.nclb)

router.post('/aadhar',aadharController.aadhar)

module.exports=router