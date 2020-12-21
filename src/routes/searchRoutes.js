const searchRouter = require("express").Router();

const searchCtrl = require("../Controllers/searchRecipes");


searchRouter.get("/", searchCtrl.searchRecipe);

module.exports = searchRouter;
