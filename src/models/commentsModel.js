const db = require("../configs/mySQL");

exports.postNewComment = (body) => {
  return new Promise((resolve, reject) => {
    const qs = "INSERT INTO comments SET ?";
    db.query(qs, body, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(errr);
      }
    });
  });
};

exports.deleteComment = () => {
  return new Promise((resolve, reject) => {
    const qs = "DELETE FROM comments WHERE id = ?";
    db.query(qs, id, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    });
  });
};
