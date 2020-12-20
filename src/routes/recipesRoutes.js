const recipesRouter = require("express").Router();

const recipesCtrl = require("../controllers/recipesCtrl");

recipesRouter.get("/", recipesCtrl.getAllRecipes);

module.exports = recipesRouter;
