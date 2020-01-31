class Cult

    attr_reader :name, :location, :founding_year, :slogan

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

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_population
        BloodOath.all.select.count {|bo| bo.cult == self}
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
end
