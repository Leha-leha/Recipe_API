const db = require("../configs/mySQL");

module.exports = {
  getUserById: (req) => {
    const { id } = req.params;
    return new Promise((resolve, reject) => {
      const qs = "SELECT name_user, photo_user FROM users WHERE id_user = ?";
      db.query(qs, id, (err, data) => {
        console.log(id);
        // console.log(level);
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
};
