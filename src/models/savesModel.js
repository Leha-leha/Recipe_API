const db = require("../configs/mySQL");

exports.postNewSave = (body) => {
  return new Promise((resolve, reject) => {
    const qs = "INSERT INTO saves SET ?";
    db.query(qs, body, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(errr);
      }
    });
  });
};
