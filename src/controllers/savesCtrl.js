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

  getRecipeSave: (req, res) => {
    savesModel
      .getRecipeSave(req)
      .then((data) => {
        if (data.length) {
          res.json({
            data,
          });
        } else {
          res.status(404).json({
            msg: "Data not Found",
          });
        }
      })
      .catch((err) => {
        res.json(err);
      });
  },
};
