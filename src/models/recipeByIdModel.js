const db = require("../configs/mySQL");

module.exports = {
  getRecipeById: (req) => {
    const { id } = req.params;
    return new Promise((resolve, reject) => {
      const qs = "SELECT * FROM recipes WHERE id_rcp = ?";
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

  deleteRecipeById: (req) => {
    const { id } = req.params;
    return new Promise((resolve, reject) => {
      const qs = "DELETE FROM recipes WHERE id_rcp = ?";
      db.query(qs, id, (err, data) => {
        if (!err) {
          resolve(data);
        } else {
          reject(err);
        }
      });
    });
  },
};
