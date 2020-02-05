require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#CULT
flatiron = Cult.new("Flatiron Masons", "NY, USA", 1000, "Culture")
facebook = Cult.new("FB Masons", "California, USA", 1000, "Social Network")
free_masons = Cult.new("Free Masons", "NY, USA", 1792, "Illuminati")

# pp Cult.all

#FOLLOWER
abid = Follower.new("Abid", 23, "Hello")
mavi = Follower.new("Mavi", 25, "Hi")
gurjot = Follower.new("Gurjot", 21, "Sup")
tom = Follower.new("Tom", 31, "How are you")
firuz = Follower.new("Firuz", 21, "Whats up")
pano = Follower.new("Pano", 47, "Hey")
phil = Follower.new("Phil", 21, "Whats good")
jemy = Follower.new("Jemy", 23, "What crackin")
daryl = Follower.new("Daryl", 23, "Whats poppin")

# pp Follower.all

#RECRUITS
flatiron.recruit_follower(mavi)
flatiron.recruit_follower(firuz)
flatiron.recruit_follower(tom)
flatiron.recruit_follower(abid)

facebook.recruit_follower(mavi)
facebook.recruit_follower(abid)
facebook.recruit_follower(tom)
facebook.recruit_follower(pano)
facebook.recruit_follower(gurjot)

free_masons.recruit_follower(abid)
free_masons.recruit_follower(phil)
free_masons.recruit_follower(jemy)
free_masons.recruit_follower(daryl)

# pp BloodOath.all

#CULT METHODS
# pp flatiron.cult_population
# pp facebook.cult_population
# pp free_masons.cult_population

# p Cult.find_by_name("Free Masons")
# p Cult.find_by_location("NY, USA")
p Cult.find_by_founding_year(1000)
