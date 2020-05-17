require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

hades = Cult.new("hades","miami","1900","devil!")
zeus = Cult.new("zeus","nyc","1920","king!")
athena = Cult.new("athena","boston","1910","wisdom!")
poseidon = Cult.new("poseidon","nyc","1800","water!")
hermes = Cult.new("hermes","miami","1900","devil!")
mercury = Cult.new("mercury","boston","1920","king!")
aphrodite = Cult.new("aphrodite","boston","1910","wisdom!")
titan = Cult.new("titan","nyc","1800","water!")

gary = Follower.new("gary",23,"guns!")
jerry = Follower.new("jerry",78,"cats!")
larry = Follower.new("larry",45,"sex!")
mary = Follower.new("mary",29,"food!")
harry = Follower.new("harry",25,"puppies!")
barry = Follower.new("barry",20,"medicine!")
perry = Follower.new("perry",33,"swords!")
zary = Follower.new("zary",23,"guns!")
zerry = Follower.new("zerry",78,"cats!")
zarry = Follower.new("zarry",45,"sex!")
xary = Follower.new("xary",5,"food!")
xarry = Follower.new("xarry",25,"puppies!")
varry = Follower.new("varry",20,"medicine!")
verry = Follower.new("verry",33,"swords!")

hades.recruit_follower(gary)
hades.recruit_follower(jerry)
hades.recruit_follower(mary)
zeus.recruit_follower(larry)
zeus.recruit_follower(mary)
athena.recruit_follower(harry)
zeus.recruit_follower(barry)
poseidon.recruit_follower(perry)
athena.recruit_follower(mary)
hades.recruit_follower(perry)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits