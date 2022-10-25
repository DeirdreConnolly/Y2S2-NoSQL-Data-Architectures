

//Our basic domain model is very simple. Nodes only have a //single property: name. 
//Any node can have one or more of the following labels: //Flour, Ingredient, or Garnish. In this example, I've only //used a single label per ingredient.
//We have two relationship types, :CONTAINS and : //GARNISHED_WITH. 
//The relationship type, :CONTAINS, has quantity and unit //properties, which 
//we'll use to define how much of a certain ingredient goes //into a recipe. 
//The relationship type :GARNISHED_WITH, has how as a property //which we will
//use to define how the garnish is placed on the cake

create

  (brown:Flour {name: "brown"}),
  (white:Flour {name: "white"}),
  (rye:Flour {name: "rye"}),
  (spelt:Flour {name: "spelt"}),
  (selfraising:Flour {name: "selfraising"}),
  (corn:Flour {name: "corn"}),

 
  (brandy:Ingredient {name: "brandy"}),
  (fbrandy:Ingredient {name: "french brandy"}),
  (coffee:Ingredient {name: "coffee"}),
  (peachSchnapps:Ingredient {name: "peach schnapps"}),
  (milk:Ingredient {name: "milk"}),
  (limeJuice:Ingredient {name: "lime juice"}),
  (cranberryJuice:Ingredient {name: "cranberry juice"}),
  (lemonJuice:Ingredient {name: "lemon juice"}),
  (orangeJuice:Ingredient {name: "orange juice"}),
  (tomatoJuice:Ingredient {name: "tomato juice"}),
  (lemonade:Ingredient {name: "lemonade"}),
  (soda:Ingredient {name: "soda water"}),
  (spice:Ingredient {name: "spice water"}),
  (cola:Ingredient {name: "cola"}),



  (egg:Ingredient {name: "egg"}),
  (cocoa:Ingredient {name: "cocoa"}),
  (sugar:Ingredient {name: "sugar"}),
  (butter:Ingredient {name: "butter"}),
  (margarine:Ingredient {name: "margarine"}),
  (creamcheese:Ingredient {name: "cream cheese"}),
  (cream:Ingredient {name: "cream"}),

  (pepper:Ingredient {name: "pepper"}),
  (salt:Ingredient {name: "salt"}),
  (worcestershire:Ingredient {name: "worcestershire sauce"}),
  (tobasco:Ingredient {name: "tobasco sauce"}),
 
  (currants:Ingredient {name: "currants"}),
  (sultanas:Ingredient {name: "red currants"}),
  (mixedpeel:Ingredient {name: "mixedpeel"}),
  (mixedspice:Ingredient {name: "mixedspice"}),
  (lemonPeel:Ingredient {name: "lemon peel"}),


  (banana:Ingredient {name: "banana"}),
  (apple:Ingredient {name: "apple"}),
  (pear:Ingredient {name: "pear"}),
 

  (cherry:Garnish {name: "cherry"}),
  (orange:Garnish {name: "orange"}),
  (lime:Garnish {name: "lime"}),
  (lemon:Garnish {name: "lemon"}),
 
  (simple:Ingredient {name: "simple syrup"}),


  //Get cooking with receipes



  // Fruit Cake Recipe
  (fruitCake:Cake {name: "Christmas Cake"}),
  (fruitCake)-[:CONTAINS {quantity: 250, unit: "grams"}]->(spelt),
  (fruitCake)-[:CONTAINS {quantity: 250, unit: "grams"}]->(brown),
  (fruitCake)-[:CONTAINS {quantity: .5, unit: "grams"}]->(salt),
  (fruitCake)-[:CONTAINS {quantity: 125, unit: "grams"}]->(sugar),
  (fruitCake)-[:CONTAINS {quantity: 100, unit: "grams"}]->(currants),
  (fruitCake)-[:CONTAINS {quantity: 100, unit: "grams"}]->(sultanas),
  (fruitCake)-[:CONTAINS {quantity: 25, unit: "grams"}]->(brandy),
  (fruitCake)-[:CONTAINS {quantity: 3, unit: "grams"}]->(orangeJuice),
  (fruitCake)-[:CONTAINS {quantity: .5, unit: "grams"}]->(mixedspice),

  // Brownies Receipe
  (brownies:Cake {name: "Brownies"}),
  (brownies)-[:CONTAINS {quantity: 50, unit: "grams"}]->(white),
  (brownies)-[:CONTAINS {quantity: 250, unit: "grams"}]->(selfraising),
  (brownies)-[:CONTAINS {quantity: .5, unit: "grams"}]->(salt),
  (brownies)-[:CONTAINS {quantity: 125, unit: "grams"}]->(sugar),
  (brownies)-[:CONTAINS {quantity: 250, unit: "grams"}]->(cocoa),
  (brownies)-[:CONTAINS {quantity: 125, unit: "grams"}]->(lemonade),
  (brownies)-[:CONTAINS {quantity: 125, unit: "grams"}]->(cola),
  (brownies)-[:GARNISHED_WITH {how: "chopped on top"}]->(cherry),
  (brownies)-[:GARNISHED_WITH {how: "chopped on top"}]->(orange),

  // Scones Receipe
  (scones:Cake {name: "Scones"}),
  (scones)-[:CONTAINS {quantity: 250, unit: "grams"}]->(selfraising),
  (scones)-[:CONTAINS {quantity: .5, unit: "grams"}]->(salt),
  (scones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(sugar),
  (scones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(milk),
  (scones)-[:GARNISHED_WITH {how: "sliced on top"} ]->(orange),

  // Brown Scones Receipe
  (brownscones:Cake {name: "Brown Scones"}),
  (brownscones)-[:CONTAINS {quantity: 250, unit: "grams"}]->(brown),
  (brownscones)-[:CONTAINS {quantity: .5, unit: "grams"}]->(salt),
  (brownscones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(sugar),
  (brownscones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(milk),
  (brownscones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(cream),
  (brownscones)-[:GARNISHED_WITH]->(orange),

 // Apple Scones  Receipe
  (applescones:Cake {name: "Apple Scones"}),
  (applescones)-[:CONTAINS {quantity: 250, unit: "grams"}]->(brown),
  (applescones)-[:CONTAINS {quantity: .5, unit: "grams"}]->(salt),
  (applescones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(sugar),
  (applescones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(milk),
  (applescones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(cream),
  (applescones)-[:CONTAINS {quantity: 125, unit: "grams"}]->(apple),
  (applescones)-[:GARNISHED_WITH {how:"chopped on top"} ]->(pear),


// Brandy Mousse
  (bmousse:Cake {name: "Brandy Mousse"}),
  (bmousse)-[:CONTAINS {quantity: 25, unit: "grams"}]->(brandy),
  (bmousse)-[:CONTAINS {quantity: .5, unit: "grams"}]->(salt),
  (bmousse)-[:CONTAINS {quantity: 125, unit: "grams"}]->(sugar),
  (bmousse)-[:CONTAINS {quantity: 125, unit: "grams"}]->(cream),
  (bmousse)-[:CONTAINS {quantity: 25, unit: "grams"}]->(fbrandy),
  (bmousse)-[:GARNISHED_WITH {how: "chopped on top"} ]->(lemon)

