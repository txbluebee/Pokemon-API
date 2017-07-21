# Pokemon API

#### Building an API Independent Project, 07/21/2017

#### By Brian Fan

## Description

Through Pokemon API app, User would be able to request all Pokemons, see individual Pokemon, update and delete pokemon info.

## Core Functionality
- [x] Endpoints for GET (all and by id), POST, PUT and DELETE.
- [x] A RANDOM endpoint that randomly returns a pokemon.
- [x] User would be able to search name of pokemon
- [x] Apply api versioning method

## Prerequisites & Installation

* install [postman app](https://www.getpostman.com/)
* install rails gem,  [instructions](https://www.learnhowtoprogram.com/rails/ruby-on-rails-basics/rails-setup-and-structure).
* install Postgres followed by the [instructions](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef).
* `git clone https://github.com/txbluebee/Pokemon-API`
* `cd Pokemon-API`
* `bundle install`
* Open new tab in the terminal (Alt +T) and run the following command
* `postgres`
* `rails db:create db:migrate db:seed`
* `rails server`

## How to Use
Open postman app
1. Request all pokemon data <br />
Select 'GET' method, visit `http://localhost:3000/api/v1/monsters`
2. See individual pokemon ex: id:2 <br />
Select 'GET' method, viist `http://localhost:3000/api/v1/monsters/2`
3. see random pokemon <br />
Select 'GET' method, viist `http://localhost:3000/api/v1/monsters?random_pokemon=`
4. search pokemon ( replace keyword below with the pokemon you would like to find ) <br />
Select 'GET' method, viist `http://localhost:3000/api/v1/monsters?name=Keyword`
5. create pokemon of your own <br />
Select 'POST' method, viist `http://localhost:3000/api/v1/monsters`
Click Body, under key/value enter {name/Pikachu, location/Seattle, move/lightning)
6. Delete pokemon ex: id:2 <br />
Selete 'DELETE' method, visit `http://localhost:3000/api/v1/monsters/2`


## Technologies Used

_Ruby_

_Ruby on Rails_

### License

Copyright (c) 2017 Brian Fan
The website is licensed under the MIT license.
