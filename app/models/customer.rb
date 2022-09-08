class Customer < ActiveRecord::Base
    has_many :books
    has_many :purchases
end