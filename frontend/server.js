const express = require("express");
const axios = require("axios");
const app = express();

app.use(express.urlencoded({ extended: true }));

const BACKEND_URL = process.env.BACKEND_URL;

app.get("/", (req, res) => {
  res.send(`
    <form method="POST" action="/submit">
      <input name="name" />
      <input name="email" />
      <button>Submit</button>
    </form>
  `);
});

app.post("/submit", async (req, res) => {
  await axios.post(`${BACKEND_URL}/api/submit`, req.body);
  res.send("Data sent to backend");
});

app.listen(3000, "0.0.0.0", () =>
  console.log("Frontend running")
);
