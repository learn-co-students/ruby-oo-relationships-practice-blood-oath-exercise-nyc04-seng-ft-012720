require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

flatiron = Cult.new
appacademy = Cult.new
bryantparksatanists = Cult.new
flatiron.minimum_age = 21
abid = Follower.new("Abid")
firuz = Follower.new("Firuz")
mavi = Follower.new("Mavi")
baby = Follower.new("Baby")
firuz.age = 21
mavi.age = 25
baby.age = 1
firuz.life_motto = "Never give up"
mavi.life_motto = "Always give up"
flatiron.recruit_follower(firuz)
flatiron.recruit_follower(mavi)
bryantparksatanists.recruit_follower(abid)
appacademy.recruit_follower(abid)
flatiron.name = "Flatiron School"
flatiron.location = "York St"
appacademy.location = "Midtown"
bryantparksatanists.location = "Midtown"
appacademy.slogan = "we are appacademy"
bryantparksatanists.slogan = "actual factual devil lovin"
flatiron.founding_year = 2020
flatiron.slogan = "Hello this is flatiron school"



binding.pry 

puts "Mwahahaha!" # just in case pry is buggy and exits
