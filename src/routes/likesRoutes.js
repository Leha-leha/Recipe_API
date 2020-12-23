const likesRouter = require("express").Router();

const likesCtrl = require("../controllers/likesCtrl");

likesRouter.post("/", likesCtrl.postNewLikeCtrl);
//savedRouter.delete("/", recipeByIdCtrl.getRecipeById);

module.exports = likesRouter;
