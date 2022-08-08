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