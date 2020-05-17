class Bloodoath
    attr_accessor :person, :cult
    @@all = []


    def initialize(person, cult, date="0000/00/00")
        @person = person
        @cult = cult
        @date = date
        @@all << self
    end 
    def initiation_date
        pp @date
    end

    def self.all
        @@all
    end

    def self.allpeople
        people = []
        self.all.each{|oath| people << oath.person}
        return people
    end
    
    def self.popbycult(cultname)
        array1 = @@all.select{|oath| oath.cult.name == cultname}
        array1.length
    end
    
    def self.peoplebycult(cultname)
        array1 = @@all.select{|oath| oath.cult.name == cultname}
        array1.map{|oath| oath = oath.person}
    end

    def self.cultsbypeople(personname)
        array1 = @@all.select{|oath| oath.person.name == personname}
        array1.map{|oath| oath = oath.cult}
    end

    def self.first_oath
        self.all[0]
    end

end