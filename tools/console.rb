require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
chipotle = Restaurant.new("Chipotle")
rev1 = Review.new("content", 6)
joe = Customer.new("Joe", "Frazier")
mike = Customer.new("Mike", "Tyson")
mike.add_review(chipotle, "content", 3)
mike.num_reviews
Customer.find_by_name("Mike Tyson")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line