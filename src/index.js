import express from "express"
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => { 
  console.log("Hello from debugger"); 
  res.send('Hello World iskander test sidi aliii + asilla +++  ');
});

app.listen(PORT, () => {
  console.log(`Server is not running on port : ${PORT}`);
});