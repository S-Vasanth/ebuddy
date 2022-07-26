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

