const likesRouter = require("express").Router();

const likesCtrl = require("../controllers/likesCtrl");

likesRouter.post("/", likesCtrl.postNewLikeCtrl);
likesRouter.get("/:id", likesCtrl.getRecipeLike);
likesRouter.delete("/", likesCtrl.unLikeCtrl);

module.exports = likesRouter;
