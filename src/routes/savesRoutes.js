const savedRouter = require("express").Router();

const savedCtrl = require("../controllers/savesCtrl");

savedRouter.post("/", savedCtrl.postNewSavesCtrl);
savedRouter.get("/:id", savedCtrl.getRecipeSave);
// savedRouter.delete("/", likesCtrl.unLikeCtrl);

module.exports = savedRouter;
