# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)

  Users has many Recipes
  Users has many Comments
  Recipes has many RecipeIngredients
  Recipes has many Comments
  Ingredients has many RecipeIngredients

- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)

  Comments belongs to Recipes
  Comments belongs to Users
  Recipes belongs to Users
  RecipeIngredients belongs to Recipes
  RecipeIngredients belongs to Ingredients

- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)

  Recipes has many Ingredients through RecipeIngredients
  Ingredients has many Recipes through RecipeIngredients

- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)

  RecipeIngredients has Quantity and Unit

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)

  Validations exist on Recipes, RecipeIngredients, Comments, Ingredients

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

  quick_meals scope for recipes with duration <= 30

- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)

  Show Recipes allows creation of Comments
  Add/Edit Recipes allows creation and deletion of RecipeIngredients

- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)

  Show Recipe Comment

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)

  New Recipe Comment

- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
