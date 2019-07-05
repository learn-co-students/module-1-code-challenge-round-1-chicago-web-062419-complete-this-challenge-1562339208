class Review

    attr_accessor :review, rating
    attr_reader : author
    @@all

    def initialize(review, rating)
        @review = review
        @author = customer.full_name
        @@all << self
    end

    # Review.all
    # returns all of the reviews

    def self.all
        @@all
    end

    # Review#customer
    # returns the customer object for that given review

    def customer

    end
    # Once a review is created, I should not be able to change the author
    # Review#restaurant
    # returns the restaurant object for that given review
    # Once a review is created, I should not be able to change the restaurant
    # Review#rating
    # returns the star rating for a restaurant. This should be an integer from 1-5
    # Review#content
    # returns the review content, as a string, for a particular review
end

