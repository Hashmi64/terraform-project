const express = require("express");
const axios = require("axios");
const app = express();

// 👇 your ALB DNS here
const BACKEND_URL = "http://apps-alb-44254635.us-east-1.elb.amazonaws.com/api/submit";

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get("/", (req, res) => {
  res.send(`
    <form method="POST" action="/submit">
      <input name="name" placeholder="Enter name" />
      <input name="email" placeholder="Enter email" />
      <button type="submit">Submit</button>
    </form>
  `);
});

app.post("/submit", async (req, res) => {
  try {
    await axios.post(BACKEND_URL, req.body);
    res.send("Data sent to Flask backend!");
  } catch (err) {
    console.log(err.message);
    res.status(500).send("Backend error");
  }
});

app.listen(3000, "0.0.0.0", () => console.log("Frontend running on port 3000"));
