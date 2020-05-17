class BloodOath

    attr_reader :cult, :follower, :initiation_date

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = Time.now.to_s.split(/ /)[0]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.allpeople
        BloodOath.all.map {|bo| bo.follower}
    end

    def self.first_oath
        BloodOath.all.first
    end
end