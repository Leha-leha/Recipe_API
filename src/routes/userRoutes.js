const userByIdRouter = require("express").Router();

const userByIdCtrl = require("../controllers/userCtrl");

const multiUpload = require("../helpers/middlewares/multiUpload");

userByIdRouter.get("/:id", userByIdCtrl.getUserById);
userByIdRouter.patch("/:id", multiUpload, userByIdCtrl.updateUserByIdCtrl);

module.exports = userByIdRouter;
