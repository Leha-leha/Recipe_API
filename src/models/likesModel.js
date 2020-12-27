const db = require("../configs/mySQL");

exports.postNewLike = (body) => {
  return new Promise((resolve, reject) => {
    const qs = "INSERT INTO likes SET ?";
    db.query(qs, body, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    });
  });
};

exports.getRecipeLike = (req) => {
  const { id } = req.params;
  return new Promise((resolve, reject) => {
    const qs =
      "SELECT r.img_rcp, r.title_rcp, r.id_rcp FROM recipes as r JOIN likes as l ON l.recipe_id=r.id_rcp WHERE l.user_id=?";
    db.query(qs, id, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(errr);
      }
    });
  });
};
