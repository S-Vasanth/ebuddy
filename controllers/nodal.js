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