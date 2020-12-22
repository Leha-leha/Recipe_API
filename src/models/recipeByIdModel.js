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

  updateRecipeByid: () => {
    return new Promise((resolve, reject) => {
      const qs = "UPDATE products SET " + setUpdate + " WHERE prd_id = ?";
      console.log(qs);
      db.query(qs, id, (err, _) => {
        if (!err) {
          resolve(_);
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
