const db = require('../db')

const getdb=db.getConnection()

exports.nclb=(req,res)=>{
  console.log(req.body)
  const {comp_id,name,Fname,dob,age,gender,address,district,aadhar,bank}=req.body

  
  getdb.query(
     "INSERT INTO nclb SET ?",
     { comp_id:comp_id,name: name, Fname: Fname, dob: dob,age:age, gender: gender, address: address, district: district ,aadhar:aadhar,bank:bank },
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("getinfo", {
           message: "data sent sucessfully",
         });
       }
     }
   );
 
   
 //  res.send("form submited")
}


exports.nclbreg=(req,res)=>{
  console.log(req.body)
  const {email,password}=req.body

  
  getdb.query(
     "INSERT INTO nclbreg SET ?",
     {email:email ,password:password },
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("nclbreg", {
           message: "registered sucessfully",
         });
       }
     }
   );
 
  
//  res.send("form submited")
}

exports.nclblogin=(req,res)=>{
   console.log(req.body)
   const {email,password}=req.body
 
   
   getdb.query(
     "SELECT * FROM nclbreg WHERE email=?", [email],
      (error, results) => {
        if (error) {
          console.log(error);
        } else {
          console.log(results);
          let pass = results[0].password;
          if(password==pass){
           return res.render("nclb");
 
          }
         
        }
      }
    );
  
   
 //  res.send("form submited")
 }

 exports.showdetailsfor_nclb=(req,res)=>{

  
  getdb.query(
     "SELECT * from nclb",
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