const commentsRouter = require("express").Router();

const commentsCtrl = require("../controllers/commentsCtrl");

commentsRouter.post("/", commentsCtrl.postNewCommentCtrl);
//commentsRouter.delete("/", recipeByIdCtrl.getRecipeById);

module.exports = commentsRouter;
