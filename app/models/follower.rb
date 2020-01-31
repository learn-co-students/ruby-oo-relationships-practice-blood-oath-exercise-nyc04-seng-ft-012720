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
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        Follower.all.select {|follower| follower.age >= age}
    end
end