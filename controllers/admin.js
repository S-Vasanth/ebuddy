const db = require('../db')

const getdb=db.getConnection()

exports.penciladminreg=(req,res)=>{
  console.log(req.body)
  const {state,email,password}=req.body

  
  getdb.query(
     "INSERT INTO penciladminreg SET ?",
     {state:state,email:email,password:password},
     (error, results) => {
       if (error) {
         console.log(error);
       } else {
         console.log(results);
         return res.render("penciladminlogin", {
           message: "Registered sucessfully",
         });
       }
     }
   );
 
   
 //  res.send("form submited")
}

  exports.penciladminlogin=(req,res)=>{
      console.log(req.body)
      const {bank_name,district,email,password}=req.body
    
      
      getdb.query(
        "SELECT * FROM penciladminreg WHERE email=?", [email],
         (error, results) => {
           if (error) {
             console.log(error);
           } else {
             console.log(results);
             let pass = results[0].password;
             if(password==pass){
              let state=results[0].state
              return res.render("penciladminlogin",{state:state});
    
             }
            
           }
         }
       );
     
      
    //  res.send("form submited")
    }