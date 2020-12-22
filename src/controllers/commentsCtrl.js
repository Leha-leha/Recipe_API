const commentsModel = require("../models/commentsModel");
const form = require("../helpers/form");

module.exports = {
  postNewCommentCtrl: (req, res) => {
    const { body } = req;
    commentsModel
      .postNewComment(body)
      .then((data) => {
        const resObject = {
          msg: "Comment berhasil dimasukkan",
          comment: body.comment,
        };
        res.status(200).json(resObject);
      })
      .catch((err) => {
        res.json(err);
      });
  },
};
