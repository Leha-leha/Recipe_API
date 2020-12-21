const searchModel = require("../Routes");
const form        = require("../Helpers/form");

module.exports = {
    searchRecipe: (req , res) => {
        searchModel
        .searchRecipe(req , query)
        .then(data => {
            form.success(res , data); 
        })
        .catch(err => {
            form.error(res , err);
        })
    }
}