class Review
    @@all = []
    attr_accessor :content, :rating
    def initialize(content, rating)
        @content = content
        @rating = rating
        @@all << self
    end
    
    def self.all
    @@all
    end

end

