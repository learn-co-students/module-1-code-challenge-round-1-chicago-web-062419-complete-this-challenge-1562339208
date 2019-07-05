require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
bob = Customer.new("Bob", "Burger")
bob2 = Customer.new("Bob", "Ketchup")
frank = Customer.new("Frank", "Sinatra")
jeff = Customer.new("Myname", "Isajeff")

goodburger = Restaurant.new("GoodBurger")
tacostop = Restaurant.new("TacoStop")
pizzahouse = Restaurant.new("PizzaHouse")


review1 = Review.new(bob, goodburger, "Great! This is the longest content", 5)
review2 = Review.new(bob, goodburger, "meh", 3)
review3 = Review.new(bob, tacostop, "It's a taco", 4)
review4 = Review.new(frank, goodburger, "It's good", 5)
review5 = Review.new(jeff, tacostop, "great", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line