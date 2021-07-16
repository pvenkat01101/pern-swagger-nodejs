
const Pool=require('pg').Pool


const pool=new Pool({
    user:"zrvhtbvsudjviz",
    password:"93317da9a6ffb327b9d7d305cfd04f00c069ff476893b2c39b79de9044da6fe1",
    host:"ec2-34-195-143-54.compute-1.amazonaws.com",
    port:5432,
    database:"d2d1g2hejso3ch"
})


// const pool=new Pool({
//     user:"postgres",
//     password:"postgres",
//     host:"localhost",
//     port:5432,
//     database:"postgres"
// })

module.exports=pool;