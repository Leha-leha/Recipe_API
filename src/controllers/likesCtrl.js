const likesModel = require("../models/likesModel");
const form = require("../helpers/form");

module.exports = {
  postNewLikeCtrl: (req, res) => {
    const { body } = req;
    likesModel
      .postNewLike(body)
      .then(() => {
        const resObject = {
          msg: "Recipe liked",
        };
        res.status(200).json(resObject);
      })
      .catch((err) => {
        res.json(err);
      });
  },

  getRecipeLike: (req, res) => {
    likesModel
      .getRecipeLike(req)
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
