const searchRouter = require("express").Router();

const searchCtrl = require("../controllers/searchRecipes");

searchRouter.get("/", searchCtrl.searchRecipe);

module.exports = searchRouter;
