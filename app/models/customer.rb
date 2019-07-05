require "pry"

class Customer

  attr_accessor :restaurant, :content, :rating
  attr_reader :first_name, :last_name
  
  @@review_count = 0
  @@all = []
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  # Customer.all
  # should return all of the customer instances

  def self.all
    @@all
  end


# Customer#add_review(restaurant, content, rating)
# given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

def add_review(restaurant, content, rating)
  @restaurant = restaurant
  @content = content
  @rating = rating
  @@review_count += 1
end

# Customer#num_reviews
# Returns the total number of reviews that a customer has authored

def num_reviews
  @@review_count
end


# Customer#restaurants
# Returns a unique array of all restaurants a customer has reviewed

def restaurants

end

# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches

def self.find_by_name(name)
  full_name = name.split(" ")
  @@all.find do |customer|
    full_name[0] == customer.first_name && full_name[1] == customer.last_name
    return customer
end

# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name

def self.find_all_by_first_name
  all_by_first_name = []
  @@all.map do |name|
    name == first_name
    all_by_first_name << name
  end
  all_by_first_name
end

# Customer.all_names
# should return an array of all of the customer full names

def self.all_names
  full_name = []
  @@all.map do |name|
    full_name << 
end


end
