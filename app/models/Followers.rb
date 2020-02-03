class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []

    def initialize(name, age=0)
        @name = name
        @age = age.to_int
        @@all << self

    end

    def join_cult(cult)
        cult.recruit_follower(self)
    end

    def self.all
        @@all.uniq
    end

    def self.of_a_certain_age(int)
        self.all.select{|follower| follower.age.to_int > int.to_int}
    end

    def allmycults
        Bloodoath.cultsbypeople(self.name)
    end

    def my_cults_slogans
        self.allmycults.map{|cult| cult = cult.slogan}
    end

    def self.most_active
        Bloodoath.allpeople.max_by{|person| Bloodoath.allpeople.count(person)}
    end

    def self.top_ten
        output = []
        source = Bloodoath.allpeople
        source.max_by{|person| source.count(person)}
        10.times do 
            winner = source.max_by{|person| Bloodoath.allpeople.count(person)}
            output << winner
            source = source.reject{|x| x == winner} 
        end
        return output
    end

    def fellow_cult_members
        output = []
        mycults = self.allmycults
        mycults.each{|cult| output << cult.followers}
        output2 = output.flatten
        output3 = output2.reject{|person| person == self}
        return output3
    end
end