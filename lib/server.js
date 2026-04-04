const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(cors());

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "fooddb"
});

// helper function to normalize ingredient names
function normalize(str) {
  return str.toLowerCase().trim();
}

app.get("/food/:barcode", (req, res) => {
  const barcode = req.params.barcode;

  // 1. Get product
  db.query(
    "SELECT * FROM food_products WHERE code = ?",[barcode],(err, foodResult) => {

      if (err) return res.json(err);

      if (foodResult.length === 0) {
        return res.json({ error: "Food not found" });
      }

      const food = foodResult[0];

      // 2. Extract ingredients list
      let ingredients = [];
      if (food.ingredients) {

        ingredients = food.ingredients.split(",").map(i => normalize(i));
      }

      // getting all ingredients
      db.query(
        "SELECT * FROM ingredients_info",
        (err, ingredientInfoResult) => {

          if (err) return res.json(err);

          // convert to map for fast lookup
          let ingredientMap = {};
          ingredientInfoResult.forEach(item => {
            ingredientMap[normalize(item.name)] = item;
          });

          // match ingredients with their info

          let enrichedIngredients = ingredients.map(name => {
            return {
              name: name,
              ...(ingredientMap[name] || {
                status: "unknown",
                notes: "No data"
              })
            };
          });

          res.json({
            food: food,
            ingredients: enrichedIngredients
          });
        }
      );
    }
  );
});

app.post("/ingredients", express.json(), (req, res) => {
  const ingredients = req.body.ingredients;

  db.query("SELECT * FROM ingredients_info", (err, results) => {
    if (err) return res.json(err);

    let map = {};
    results.forEach(item => {
      map[item.name.toLowerCase()] = item;
    });

    let enriched = ingredients.map(name => {
      let clean = name.toLowerCase().trim();

      return {
        name: clean,
        ...(map[clean] || {
          status: "unknown",
          notes: "No data"
        })
      };
    });

    res.json(enriched);
  });
});


app.listen(3000, () => {
  console.log("Server running on port 3000");
});
