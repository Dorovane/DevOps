const express = require("express")

const app = express()

const PORT = 3000

app.get("/",(req,res)=>{
    res.send({message:"Le serveur fonctionne"})
})

app.get("/health",(req,res)=>{
    console.log("Infos sur la santé")
    res.status(200).json({message:"Serveur en bon etat"})
})

app.listen(PORT,()=>{
    console.log("Serveur démarré")
})