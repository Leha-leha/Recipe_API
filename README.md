# Recipe API Web Food Recipe

This is Repository for API Web Food Recipe. For frontend section you can find [here](https://github.com/Leha-leha/Food-Recipe)

## Technologies

For our backend API we use Javascript as main programming language with [Node Js](https://nodejs.org/en/) for environment.
This API uses a number of open source projects to work properly:

- Express JS
- MySql
- bcrypt
- jasonwebtoken
- body-parser
- cors
- morgan
- multer
- nodemailer
- nodemon
- dotenv

## Install

```sh
npm install
npm start
```

## env

```sh
HOST = "YOUR_DB_HOST"
USER = "YOUR_DB_USER"
DB   = "YOUR_DB"
PASS = "YOUR_DB_PAS"

PORT  = YOUR_PPORT

SECRET_KEY = "YOUR_SECRET_KEY"
```

## API Endopoint

GET All Recipes

```sh
HTTP GET
/recipes
```

GET A Product

```sh
HTTP
http://localhost:8000/product/:id
```

```sh
For more information about this API, you can visit my api documentation on https://documenter.getpostman.com/view/12314857/TVewY4G8
```
