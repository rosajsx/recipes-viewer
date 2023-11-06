CREATE DATABASE recipeviewer;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


CREATE TABLE IF NOT EXISTS recipes (
  id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
  name VARCHAR NOT NULL,
  cooking_instructions VARCHAR NOT NULL,
  image VARCHAR NOT NULL,
  ingredients VARCHAR NOT NULL
);

INSERT INTO recipes(name, cooking_instructions, image, ingredients)
VALUES('Cumberland Pie3', 'lorem impsum', 'data:image/jpeg;base64,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', '2 rings, 5 apples, 1 strawberry');

INSERT INTO recipes(name, cooking_instructions, image, ingredients)
VALUES('Air fryer halloumi', 'STEP 1
Heat your air fryer on 200C for 2 mins. Carefully pat the halloumi dry using kitchen paper or a clean cloth, then brush or rub with oil. Season with salt and pepper and any flavourings, if using.

STEP 2
Put the halloumi in the air fryer basket and cook for 8 mins until beginning to brown. Flip over and cook for a further 2-5 mins until crisp and golden.', 'https://images.immediate.co.uk/production/volatile/sites/30/2022/12/Air-fryer-halloumi-c2c036e.jpg?quality=90&webp=true&resize=600,545', '225g halloumi cut into 6cm x 1cm thick slices, 1 tsp olive oil, 1 tsp smoked paprika mixed herbs or other flavourings (optional)');

INSERT INTO recipes(name, cooking_instructions, image, ingredients)
VALUES('Air fryer sweet potato fries', 'STEP 1
Peel the sweet potatoes and slice into ½ cm sticks. Put in a bowl, drizzle over the oil and give them a good toss to coat. Sprinkle over the paprika, mixed herbs and ½ tsp each of salt and pepper, then give it all a good mix with your hands to ensure its evenly coated. STEP 2
Cook, in batches, in a single layer in your air fryer basket at 180C for around 10-15 mins, until lightly golden, giving a little shake or toss after 5 mins. Once all the batches have cooked, return the fries to the air fryer, give it a good shake and cook for a further 1-2 mins to heat through.', 'https://images.immediate.co.uk/production/volatile/sites/30/2022/04/Air-Fryer-Sweet-Potato-Fries-b51003b.jpg?quality=90&webp=true&resize=600,545', '2 sweet potatoes, 1 tsp olive oil, 1 tsp sweet smoked paprika or other seasonings such as Cajun seasoning BBQ seasoning or garlic granules, ½ tsp mixed herbs');

INSERT INTO recipes(name, cooking_instructions, image, ingredients)
VALUES('Air-fryer sweetcorn fritters', 'STEP 1
Combine the flour, baking powder, garlic powder, paprika and a good pinch each of salt and freshly ground black pepper in a large bowl. Gradually whisk in the milk and eggs until you have a smooth, thick batter. Mix in the parsley, spring onions and sweetcorn. Make 10-12 fritters by taking a spoonful of the mixture (around the size of a golf ball) and flattening down. Put on a tray or plate.

STEP 2
Put a layer of baking parchment in the base of the air-fryer basket. Heat the air-fryer to 200C and cook the fritters in batches for 12-15 mins, turning after 8 mins until golden and set.', 'https://images.immediate.co.uk/production/volatile/sites/30/2022/04/Air-Fryer-Sweet-Potato-Fries-b51003b.jpg?quality=90&webp=true&resize=600,545', '175g plain flour, 1½ tsp baking powder, 1½ tsp baking powder, 1 tsp smoked paprika, 100ml milk, 2 eggs beaten, ½ small bunch of parsley, finely chopped, 4 spring onions, finely chopped, 500g sweetcorn (see tip below)');


