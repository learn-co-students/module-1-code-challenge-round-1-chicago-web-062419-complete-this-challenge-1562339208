class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.

def customers

end

# Restaurant#reviews
# returns an array of all reviews for that restaurant

def reviews

end

# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews

def average_star_rating

end

# Restaurant#longest_review
# returns the longest review content for a given restaurant

def longest_review

end

# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches

def self.find_by_name(restaurant_name)
  @@all.find { |i| i == restaurant_name } 
end



end
