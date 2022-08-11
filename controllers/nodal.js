const db = require('../db')

const getdb=db.getConnection()


exports.nodal=(req,res)=>{
   console.log(req.body)
   const {address,city,district,pincode}=req.body

   
   getdb.query(
      "INSERT INTO nodal SET ?",
      { address: address, city: city, district: district,pincode:pincode },
      (error, results) => {
        if (error) {
          console.log(error);
        } else {
          console.log(results);
          return res.render("index", {
            message: "complaint received",
          });
        }
      }
    );
  
   
 //  res.send("form submited")
}


exports.display_complaint=(req,res)=>{

  
  getdb.query(
     "SELECT * from nodal",
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         let i = 1;
          results.forEach((el) => {
          el.s_no = `${i++}.`;
          return el;
          })
         return res.send(results);
      
       }
     }
     
   );
   
   
}

exports.nodalreg=(req,res)=>{
  console.log(req.body)
  const {district,email,password}=req.body

  
  getdb.query(
     "INSERT INTO nodalreg SET ?",
     { district:district,email:email,password:password},
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("index", {
           message: "complaint received",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}


exports.nodallogin=(req,res)=>{
  console.log(req.body)
  const {district,email,password}=req.body

  
  getdb.query(
    "SELECT * FROM nodalreg WHERE email=?", [email],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         let pass = results[0].password;
         if(password==pass){
          return res.render("nodal");

         }
        
       }
     }
   );
 
  
//  res.send("form submited")
}
exports.nodalstatus=(req,res)=>{
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
    // console.log(obj.comp_id)
    // var reqData =  JSON.stringify(req.body);
    // var comp_id=JSON.parse(reqData)
   
    // console.log("string :::: " + reqData);
    // console.log("parse:::: " + comp_id.comp_id);
 
  getdb.query(
     "UPDATE nodal SET bank_status=? WHERE comp_id=?",["ACCEPTED",comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("bank", {
           message: "Status updated",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}

exports.nodalstatus=(req,res)=>{
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
    // console.log(obj.comp_id)
    // var reqData =  JSON.stringify(req.body);
    // var comp_id=JSON.parse(reqData)
   
    // console.log("string :::: " + reqData);
    // console.log("parse:::: " + comp_id.comp_id);
 
  getdb.query(
     "UPDATE nodal SET bank_status=? WHERE comp_id=?",["ACCEPTED",comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("bank", {
           message: "Status updated",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}

exports.nodalstatus1=(req,res)=>{
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
    // console.log(obj.comp_id)
    // var reqData =  JSON.stringify(req.body);
    // var comp_id=JSON.parse(reqData)
   
    // console.log("string :::: " + reqData);
    // console.log("parse:::: " + comp_id.comp_id);
 
  getdb.query(
     "UPDATE nodal SET bank_status=? WHERE comp_id=?",["IN PROCESS",comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("bank", {
           message: "Status updated",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}

exports.nodalstatus2=(req,res)=>{
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
    // console.log(obj.comp_id)
    // var reqData =  JSON.stringify(req.body);
    // var comp_id=JSON.parse(reqData)
   
    // console.log("string :::: " + reqData);
    // console.log("parse:::: " + comp_id.comp_id);
 
  getdb.query(
     "UPDATE nodal SET bank_status=? WHERE comp_id=?",["Process Completed",comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("bank", {
           message: "Status updated",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}

exports.aadharaccept=(req,res)=>{
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
    // console.log(obj.comp_id)
    // var reqData =  JSON.stringify(req.body);
    // var comp_id=JSON.parse(reqData)
   
    // console.log("string :::: " + reqData);
    // console.log("parse:::: " + comp_id.comp_id);
 
  getdb.query(
     "UPDATE nodal SET aadhar_status=? WHERE comp_id=?",["ACCEPTED",comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("aadhar", {
           message: "Status updated",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}


exports.aadharprocess=(req,res)=>{
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
    // console.log(obj.comp_id)
    // var reqData =  JSON.stringify(req.body);
    // var comp_id=JSON.parse(reqData)
   
    // console.log("string :::: " + reqData);
    // console.log("parse:::: " + comp_id.comp_id);
 
  getdb.query(
     "UPDATE nodal SET aadhar_status=? WHERE comp_id=?",["IN PROCESS",comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("aadhar", {
           message: "Status updated",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}
exports.aadharcompleted=(req,res)=>{
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
    // console.log(obj.comp_id)
    // var reqData =  JSON.stringify(req.body);
    // var comp_id=JSON.parse(reqData)
   
    // console.log("string :::: " + reqData);
    // console.log("parse:::: " + comp_id.comp_id);
 
  getdb.query(
     "UPDATE nodal SET aadhar_status=? WHERE comp_id=?",["COMPLETED",comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("aadhar", {
           message: "Status updated",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}

exports.aadharhide=(req,res)=>{
  console.log(req)
  console.log(req.body.comp_id)
   var comp_id=req.body.comp_id
   console.log(comp_id)
  
    getdb.query(
      "SELECT * FROM aadhar  WHERE comp_id=?",[comp_id],
      (error, results) => {
        if (error) {
          console.log(error);
        } else {
          console.log(results);
          res.send(results);
         //  return res.render("aadhar", {
         //    message: "Status updated",
        //  });
        }
      }
    );
  }
//  res.send("form submited")


exports.bankhide=(req,res)=>{
  console.log(req.body.comp_id1)
   var comp_id1=req.body.comp_id1

   if(comp_id1!=""){
    getdb.query(
      "SELECT * FROM bank  WHERE comp_id=?",[comp_id1],
      (error, results) => {
        if (error) {
          console.log(error);
        } else {
          console.log(results);
          res.send(results);
         //  return res.render("aadhar", {
         //    message: "Status updated",
        //  });
        }
      }
    );
   }
   
  
//  res.send("form submited")
}

exports.nodalupdate=(req,res)=>{
  // console.log(req.body.comp_id)
  //  var comp_id=req.body.comp_id
   const {comp_id,scheme,desc}=req.body
    
  getdb.query(
     "UPDATE nodal SET scheme=?,description=? WHERE comp_id=?",[ scheme ,desc, comp_id],
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("scheme", {
           message: "Updated Successfully",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}