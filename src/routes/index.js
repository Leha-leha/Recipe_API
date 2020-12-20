const express = require("express");

const mainRouter = express.Router();

const recipesRouter = require("./recipesRoutes");

mainRouter.use("/recipes", recipesRouter); // localhost:5000/recipes

module.exports = mainRouter;
