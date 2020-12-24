const userByIdRouter = require("express").Router();

const userByIdCtrl = require("../controllers/userCtrl");

userByIdRouter.get("/:id", userByIdCtrl.getUserById);

module.exports = userByIdRouter;
