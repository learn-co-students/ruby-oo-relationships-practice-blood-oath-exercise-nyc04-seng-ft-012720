class Cult

    attr_reader :name, :location, :founding_year, :slogan
    ALL = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        ALL << self
    end

    def self.all 
        ALL
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_members
        BloodOath.all.select do |bloodoath|
            bloodoath.cult == self
        end
    end

    def cult_population
        cult_members.length
    end

    def self.find_by_name(name)
        self.all.find do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.founding_year == year
        end
    end

end