
const Pool=require('pg').Pool


const pool=new Pool({
    user:"rnakfaybnqbmqo",
    password:"f526d238e9c41351e4273036b8e8ecefb21dae8f4aa4ff02f319fcd93aa38a91",
    host:"ec2-52-2-118-38.compute-1.amazonaws.com",
    port:5432,
    database:"dd849lpevuadui"
})


// const pool=new Pool({
//     user:"postgres",
//     password:"postgres",
//     host:"localhost",
//     port:5432,
//     database:"postgres"
// })

module.exports=pool;