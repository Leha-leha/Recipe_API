const authRouter = require("express").Router();

const authController = require("../controllers/authCtrl");

authRouter.post("/signup", authController.signup);

module.exports = authRouter;
