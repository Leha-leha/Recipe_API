const searchModel = require("../models/searchRecipes");
const form = require("../Helpers/form");

module.exports = {
  searchRecipes: (req, res) => {
    const { query } = req;
    
    const limit = Number(query.limit) || 10; // default 10

    const page  = Number(query.page) || 1;

    const offset = (page - 1) * limit;

    const { title } = req.query;
    let plusQuery = ``;
    let uriQuery  = ``;
    let queryLength = Object.keys(req.query).length - 1;
    if(query.page) {
      queryLength -= 1;
    }
    if (query.limit) {
      queryLength -= 1;
    }

    let initial = 0;

    if(Object.keys(req.query).length) {
      plusQuery += `WHERE `
      if(title > 0){
        plusQuery += `title_rcp LIKE '%${title}%' `;
        uriQuery  += `title_rcp '${title}'` 
      }
    }
      console.log(plusQuery , uriQuery , offset , limit)
    searchModel
      .totalResult(plusQuery)
      .then((result) => {
        searchModel.searchRecipes(plusQuery,uriQuery, result[0].total_result , page , offset , limit)
        .then(data => {
          res.status(200).json(data);
        })
      })
      .catch((err) => {
        res.status(500).json(err);
      });
  },
};
