const db = require("../configs/mySQL");
const from = require("../helpers/form");

exports.getAllRecipesModel = (req) => {
  return new Promise((resolve, reject) => {
    const qs =
      "SELECT r.title_rcp, r.img_rcp FROM recipes as r ORDER BY created_at DESC";
    db.query(qs, (err, receipes) => {
      if (receipes.length == 0) {
        reject({
          msg: "data tidak tersedia",
        });
      }
      if (!err) {
        resolve(receipes);
      } else {
        reject(err);
      }
    });
  });
};

exports.postNewRecipe = (req) => {
  // mendapat objek request dari client
  // melakukan query ke db
  // mengirim response
  //const img = process.env.SERVER + "/images/" + req.file.filename; for single
  const image = JSON.stringify(
    req.files.img.map((e) => process.env.SERVER + "/images/" + e.filename)
  );
  const videos = JSON.stringify(
    req.files.videos.map((e) => process.env.SERVER + "/videos/" + e.filename)
  );
  const { body } = req;
  console.log(req.files);
  const insertBody = {
    ...body,
    created_at: new Date(Date.now()),
    updated_at: new Date(Date.now()),
    //prd_image: img,
    img_rcp: image,
    video_rcp: videos,
  };
  return new Promise((resolve, reject) => {
    const qs = "INSERT INTO recipes SET ?";
    db.query(qs, insertBody, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    });
  });
};
