const likesRouter = require("express").Router();

const likesCtrl = require("../controllers/likesCtrl");

likesRouter.post("/", likesCtrl.postNewLikeCtrl);
likesRouter.get("/:id", likesCtrl.getRecipeLike); // get recipes by user id
likesRouter.delete("/:id", likesCtrl.unLikeCtrl);
likesRouter.get("/detail/:idrecipe/:iduser", likesCtrl.getLikeCtrl); // get like by user on specific recipe

module.exports = likesRouter;
