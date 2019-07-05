class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers 
    # Returns a unique list of all customers who have reviewed a particular restaurant.
    Customer.all.select {|customer| customer.name == self}
    #array of all customers select the customer name == this restauarant instance
  end

  def reviews
    # returns an array of all reviews for that restaurant
    
  end

  def average_star_rating
    
  end

  def longest_review
    self.reviews.max_by(1) {|review| review.length }
  end

end

# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews
# Restaurant#longest_review
# returns the longest review content for a given restaurant

