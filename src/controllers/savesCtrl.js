const savesModel = require("../models/savesModel");
const form = require("../helpers/form");

module.exports = {
  postNewSavesCtrl: (req, res) => {
    const { body } = req;
    savesModel
      .postNewSave(body)
      .then(() => {
        const resObject = {
          msg: "Saved recipe successful",
        };
        res.status(200).json(resObject);
      })
      .catch((err) => {
        res.json(err);
      });
  },
};
