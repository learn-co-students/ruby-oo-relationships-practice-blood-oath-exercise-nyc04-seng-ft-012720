class BloodOath

    attr_reader :cult, :follower, :initiation_date
    ALL = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
        ALL << self
    end

    def self.all 
        ALL
    end

end