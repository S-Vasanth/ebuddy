const db = require('../db')

const getdb=db.getConnection()

exports.aadhar=(req,res)=>{
  console.log(req.body)
  const {comp_id,name,Fname,dob,desc,gender,address,district}=req.body


  getdb.query(
     "INSERT INTO aadhar SET ?",
     { comp_id:comp_id,name: name, Fname: Fname, dob: dob, gender: gender, address: address, district: district },
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

    }

    exports.aadharreg=(req,res)=>{
      console.log(req.body)
      const {username,password,state,district}=req.body
   
      
      getdb.query(
         "INSERT INTO aadharreg SET ?",
         {username:username ,password:password, state:state, district:district },
         (error, results) => {
           if (error) {
             console.log(error);
           } else {
             console.log(results);
             return res.render("aadharreg", {
               message: "complaint received",
             });
           }
         }
       );
     
      
    //  res.send("form submited")
   }
   
   exports.aadharlogin=(req,res)=>{
       console.log(req.body)
       const {email,password,state,district}=req.body
     
       
       getdb.query(
         "SELECT * FROM aadharreg WHERE username=?", [email],
          (error, results) => {
            if (error) {
              console.log(error);
            } else {
              console.log(results);
              let pass = results[0].password;
              if(password==pass){
               return res.render("aadhar");
     
              }
             
            }
          }
        );
      
       
     //  res.send("form submited")
     }
   
   
     exports.display_aadhar=(req,res)=>{
   
     
       getdb.query(
          "SELECT * from aadhar",
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