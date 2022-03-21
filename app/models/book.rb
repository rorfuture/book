class Book < ApplicationRecord
    has_many :articles
    belongs_to :user
end
