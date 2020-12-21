const express = require("express");

const mainRouter = express.Router();

const recipesRouter = require("./recipesRoutes");
const recipeByIdRouter = require("./recipeByIdRoutes");
const authRouter = require("./authRoutes");

mainRouter.use("/recipes", recipesRouter); // localhost:5000/recipes
mainRouter.use("/recipe", recipeByIdRouter); // localhost:5000/recipes
mainRouter.use("/auth", authRouter); // localhost:5000/auth

module.exports = mainRouter;
