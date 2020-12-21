const multer = require("multer");
const path = require("path");

const form = require("../form");

const multerStorage = multer.diskStorage({
  destination: function (req, file, cd) {
    if (file.fieldname === "img") {
      cd(null, "./public/images");
    } else if (file.fieldname === "videos") {
      cd(null, "./public/videos");
    }
  },
  filename: function (req, file, cb) {
    const nameFormat = `${Date.now()}-${file.fieldname}${path.extname(
      file.originalname
    )}`;
    cb(null, nameFormat);
  },
});

const upload = multer({
  storage: multerStorage,
  limits: 2 * 1000 * 1000 * 100, //200Mb
});

const multiUpload = (req, res, next) => {
  //fields
  var cpUpload = upload.fields([
    { name: "img", maxCount: 1 },
    { name: "videos", maxCount: 5 },
  ]);
  //const uploadMulti = upload.array("videos", 5);
  cpUpload(req, res, (err) => {
    if (err) {
      form.error(res, {
        msg: "Multer Error",
        err,
      });
    } else {
      next();
    }
  });
};

module.exports = multiUpload;
