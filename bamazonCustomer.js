var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  user: "User",

  password: "password",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  readProducts();
});

function readProducts() {
  console.log("Selecting all products...\n");
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    // Log all results of the SELECT statement
    console.log(res);
    buyMenu(res);
  });
}


function buyMenu(inventory) {
  inquirer
    .prompt([
      {
      name: "choice",
      type: "input",
      message: "What product would you like to buy? Please enter ID",
    }
  ])  
  .then(function(val) {
    var buyerChoice = parseInt(val.choice);
    var product = itemCheck(buyerChoice, inventory);

    if (product) {
      quantityChoice(product);
    }
    else {
      console.log("\nInvalid selection. Please select a listed product");
      readProducts();
    }
  });
}

function quantityChoice(product) {
  inquirer
  .prompt( [
    {
      name: "quantity",
      type: "input",
      message: "How many would you like to purchase?"
    }
  ])
  .then(function(val) {
    
    var quantity = parseInt(val.quantity);
    if (quantity > product.item_quantity) {
      console.log("\nNot enough, make another selection");
      readProducts();
    }
    else {
      buyTheStuff(product, quantity);
    }
  });
}

function buyTheStuff(product, quantity) {
  connection.query(
    "UPDATE products SET item_quantity = item_quantity - ? WHERE item_id = ?",
    [quantity, product.item_id],
    function(err, res) {
      console.log("\nYou bought " + quantity + " " + product.product_name);
      readProducts();
    }
  );
}

function itemCheck(buyerChoice, inventory) {
  for (var i = 0; i < inventory.length; i++) {
    if (inventory[i].item_id === buyerChoice) {
      return inventory[i];
    }
  }
  return null;
}