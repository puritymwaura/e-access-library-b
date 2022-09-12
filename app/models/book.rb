class Book <ActiveRecord::Base
    belongs_to:customers
    has_many :purchases
    
end