class Follower

    attr_reader :name, :age, :life_motto
    ALL = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        ALL << self
    end

    def self.all 
        ALL
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

end