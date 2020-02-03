class Follower

    attr_reader :name, :life_motto
    attr_accessor :age
    
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        BloodOath.all.select {|bo| bo.follower == self}
    end

    def join_cult(cult)
        if cult.minimum_age <= self.age
            BloodOath.new(cult, self)
        else
            p "#{self.name} is too young to join #{cult.name}"
        end
    end

    def self.of_a_certain_age(age)
        Follower.all.select {|follower| follower.age >= age}
    end

    def my_cults_slogans
        cults.map {|bo| p bo.cult.slogan}
    end

    def self.most_active
        Follower.all.max_by {|follower| follower.cults.count}
    end

    def self.top_ten
        tt = []
        ol = Follower.all.sort_by {|follower| follower.cults.count}
        10.times do
        tt << ol.pop
        end
        tt
    end

    def fellow_cult_members
        fcm = []
        BloodOath.all.each do |bo| 
            if self.cults.any? {|oath| oath.cult == bo.cult}
            fcm << bo.follower
            end
        end
        fcm
    end
end