const db = require("../Configs/mySQL");
// const form = require("../Helpers/form");

module.exports ={
    searchRecipes : (plusQuery , uriQuery , total_result , page , offset , limit) => {
        return new Promise((resolve , reject) => {
            const qs = `SELECT r.id_rcp, r.title_rcp, r.img_rcp FROM recipes as r ` + plusQuery + `LIMIT ${limit} OFFSET ${offset}`
            console.log(uriQuery)
            db.query(qs  , (err , data) => {
<<<<<<< HEAD
                 
=======
>>>>>>> 49cc87ef5b18cf8d075e1a5e6e4936270a6cf38e
                    if (data.length !== 0){
                        newData = {
                            recipe: data,
                            pageInfo: {
                                result: total_result,
                                totalPage:total_result%limit === 0 ? total_result/limit : Math.floor(total_result/limit) + 1,
                                currentPage: page || 1,
                                previousPage: page === 1 ? null : `/search${uriQuery}&page=${page - 1}&limit=${limit}`,
<<<<<<< HEAD
                            nextPage: total_result-(offset+limit) < 0 ? null : `search${uriQuery}&page=${page + 1}$limit=${limit}`
                            }
                        }
                    resolve(newData)
                    }
                else {
                    reject(err)
=======
                            nextPage: total_result-(offset+limit) < 0 ? null : `search${uriQuery}&page=${page + 1}&limit=${limit}`
                            },
                        };
                    console.log(data.length)
                    resolve(newData)
                } else {
                    reject(err);
>>>>>>> 49cc87ef5b18cf8d075e1a5e6e4936270a6cf38e
                }
            });
        });
    },
    searchTotalResult : (plusQuery) => {
        return new Promise ((resolve, reject) => {
            const qs = `SELECT COUNT(title_rcp) as total_result from recipes` + plusQuery 
            db.query(qs, (err, data) => {
                if(!err){
<<<<<<< HEAD
                   
                        resolve(data)
                    }
                else{
                    reject(err)
=======
                    resolve(data); 
                } else {
                    reject(err);
>>>>>>> 49cc87ef5b18cf8d075e1a5e6e4936270a6cf38e
                }
            })
        })
    }
}
