class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

    def recruit_follower(follower)
        if follower.age.to_i >= @minimum_age.to_i
            Bloodoath.new(follower, self)
        else
            p "Little one, you will have to wait."
        end
    end

    def population
        Bloodoath.popbycult(self.name)
    end

    def self.all
        Bloodoath.all.map{|oath| oath.cult}.uniq
    end 

    def self.locations
        self.all.map{|cult| cult = cult.location}
    end

    def self.find_by_name(name)
        Cult.all.find{|cult| cult.name == name}
    end

    def self.find_by_location(place)
        Cult.all.select{|cult| cult.location == place}
    end

    def self.find_by_founding_year(year)
        Cult.all.select{|cult| cult.founding_year == year}
    end

    def followers
        Bloodoath.peoplebycult(self.name)
    end

    def average_age
        ages = self.followers.map{|follower| follower = follower.age}
        ages.reduce{|sum, number| sum + number} / ages.length.to_f
    end

    def my_followers_mottos
        self.followers.map{|follower| follower = follower.life_motto}
    end

    def self.least_popular
        self.all.min_by{|cult| cult.population}
    end

    def self.most_common_location
        self.locations.max_by{|location| Cult.locations.count(location)}
    end

end
