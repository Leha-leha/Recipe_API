const db = require("../Configs/mySQL");
const form = require("../Helpers/form");

exports.searchRecipes = (query) => {
    return new Promise((resolve , reeject) => {
        const qs = `SELECT r.title_rcp, r.img_rcp , r.video_rcp  FROM recipes as r WHERE r.title_rcp LIKE '%${query.search}%' OR ingridients_rcp LIKE  '%${query.search}%' ORDER BY r.created_at DESC`
        db.query(qs  , (err , data) => {
            if(!err){
                resolve(data)
            } else {
                reject(err)
            }
        })
    })
}