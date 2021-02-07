const savedRouter = require("express").Router();

const savedCtrl = require("../controllers/savesCtrl");

savedRouter.post("/", savedCtrl.postNewSavesCtrl);
savedRouter.get("/:id", savedCtrl.getRecipeSave);
savedRouter.delete("/:id", savedCtrl.unSaveCtrl); //params recipe id
savedRouter.get("/detail/:idrecipe/:iduser", savedCtrl.getSaveCtrl); // get like by user on specific recipe

module.exports = savedRouter;
