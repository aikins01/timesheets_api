# README

To get the app running, you clone this repo, `cd` into it and run
`bundle install` to install all the required dependencies.
Then run `rails db:migrate` to create our database and make migrations and `rake db:seeds` to feed the database with some data defined in `db/seeds.rb`.

To get the server running run `rails s` and go to http://127.0.0.1:3000 in your browser

To get a list of all the timesheets, go to http://127.0.0.1:3000/api/v1/timesheets.json

other endpoints can be tested also all defined in `/app/controllers/api/v1/timesheets_controller.rb`

