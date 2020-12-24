const likesRouter = require("express").Router();

const likesCtrl = require("../controllers/likesCtrl");

likesRouter.post("/", likesCtrl.postNewLikeCtrl);
likesRouter.get("/:id", likesCtrl.getRecipeLike);
//savedRouter.delete("/", recipeByIdCtrl.getRecipeById);

module.exports = likesRouter;
