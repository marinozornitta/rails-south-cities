# RailsSouthCities

This repository is an application developed using the programming language Ruby (2.7.0) and its framework Rails (5.2.6) to catalog cities and states from Brazil (South Region).
The data is storaged at a PostgreSQL database through a Docker container.

The application container will run on port 3000.
The database container will run on port 5432 (default port for PostgreSQL).

## Dependencies

### Docker

To run this project you must have [Docker](https://docs.docker.com/engine/install/) installed and running.

## Building Application

To build the application, run in your terminal:
`$ docker-compose build`

This command will automatically start the application container and database container.
Use the option `--build` if it is the first time you are running the container.
This option builds the container image.

## Database Setup

Now it is necessary to setup the database and create, migrate and seed with initial records.
To do that, run these three commands in your terminal:
`$ docker-compose run web bundle exec rake db:create`
`$ docker-compose run web bundle exec rake db:migrate`
`$ docker-compose run web bundle exec rake db:seed`

## Running Application

To start the application, run in your terminal:
`$ docker-compose up`

You can access the server through [http://localhost:3000](http://localhost:3000).

## Running Tests

Currently we have three kind of tests: models, controllers and features.

* For running models tests with RSpec, run in your terminal:
`$ docker-compose run web rspec spec/models --format documentation`

* For running controllers tests with RSpec, run in your terminal:
`$ docker-compose run web rspec spec/controllers/cities_controller_test.rb --format documentation`

* For running features tests with RSpec, run in your terminal:
`$ docker-compose run web rspec spec/features/cities_search_spec.rb --format documentation`
