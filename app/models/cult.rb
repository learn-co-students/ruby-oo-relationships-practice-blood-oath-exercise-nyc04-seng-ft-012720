class Cult

    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :minimum_age

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def set_age_limit(integer)
        @minimum_age = integer
    end

    def recruit_follower(follower)
        if follower.age >= self.minimum_age.to_i
            BloodOath.new(self, follower)
        else
            p "#{follower.name} is too young to join"
        end
    end

    def bloodoaths
        BloodOath.all.select {|bo| bo.cult == self}
    end

    def cult_population
        bloodoaths.count
    end

    def self.find_by_name(cult_name)
        Cult.all.find {|cult| cult.name == cult_name}
    end

    def self.find_by_location(cult_location)
        Cult.all.select {|cult| cult.location == cult_location}
    end

    def self.find_by_founding_year(year)
        Cult.all.find {|cult| cult.founding_year == year}
    end

    def average_age
        bloodoaths.map.sum {|bo|bo.follower.age}.to_f/cult_population
    end

    def my_followers_mottos
        bloodoaths.map {|bo| p bo.follower.life_motto}
    end

    def self.least_popular
        po_array = Cult.all.map {|cult| cult.cult_population}
        Cult.all.select {|cult| cult.cult_population == po_array.min} #Using select instead of find in the case of a tie for the least followers
    end

    def self.most_common_location
        cult_loc_array = Cult.all.map {|cult| cult.location}
        loc_count = Hash.new(0)
        cult_loc_array.each {|loc| loc_count[loc] += 1}
        loc_count.sort_by { |loc,number| number}.last[0]
        # cult_loc_array.max_by {|i| cult_loc_array.count(i)} # <-- Alternative method that also doesn't allow for ties
    end
end
