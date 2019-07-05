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
    customer_reviews = []
    Review.all.each do |review|
      if review.restaurant == self
        customer_reviews << review.customer
      end
    end
    customer_reviews.uniq!
  end
  
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    stars = []
    Review.all.each do |review|
      if review.restaurant == self
        stars << review.rating 
      end
    end
    #alt method.. avgrating = (stars.inject{|sum, rating| sum + rating }.to_f / stars.count).round
    avg = (stars.sum / stars.count).to_f.round
  end

  def longest_review
    maxlength = 0
    review = 0
    Review.all.select do |review|
      if self == review.restaurant
        if review.content.length > maxlength
          maxlength = review.content.length
        end
      end
      if maxlength = review.content.length
        return review.content
      end
    end

  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end
end
