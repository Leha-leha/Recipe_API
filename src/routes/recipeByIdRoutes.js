const recipeByIdRouter = require("express").Router();

const recipeByIdCtrl = require("../controllers/recipeByIdCtrl");

recipeByIdRouter.get("/:id", recipeByIdCtrl.getRecipeById);
recipeByIdRouter.delete("/:id", recipeByIdCtrl.deleteRecipeByIdCtrl);

module.exports = recipeByIdRouter;
