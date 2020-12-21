const recipeByIdRouter = require("express").Router();

const recipeByIdCtrl = require("../controllers/recipeByIdCtrl");

recipeByIdRouter.get("/:id", recipeByIdCtrl.getRecipeById);

module.exports = recipeByIdRouter;
