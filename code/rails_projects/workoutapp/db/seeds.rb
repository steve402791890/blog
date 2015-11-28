# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

ClientWorkout.create!( :client_name => "Howard", :trainer => "Bill", :duration_mins => 60, :date_of_workout => "2014-07-29", :paid_amount => 50.00 )
ClientWorkout.create!( :client_name => "Howard", :trainer => "Bill", :duration_mins => 90, :date_of_workout => "2014-07-30", :paid_amount => 100.00 )
ClientWorkout.create!( :client_name => "You", :trainer => "Mary", :duration_mins => 120, :date_of_workout => "2014-07-31", :paid_amount => 150.00 )

# The offensive calls have been commented out!
# Let's try creating a workout without specifying a client
# ClientWorkout.create!( :client_name => nil, :trainer => "Bill", :duration_mins => 60, :date_of_workout => "2014-07-29", :paid_amount => 50.00 )
# Let's try creating a workout without specifying a trainer
# ClientWorkout.create!( :client_name => "Howard", :trainer => nil, :duration_mins => 90, :date_of_workout => "2014-07-30", :paid_amount => 100.00 )
# Let's try creating a workout without specifying a paid amount.
# ClientWorkout.create!( :client_name => "You", :trainer => "Mary", :duration_mins => 120, :date_of_workout => "2014-07-31" )
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
