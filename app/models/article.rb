class Article < ApplicationRecord
    # validations

    validates :title, presence: true
    validates :description, presence: true
    # Association
    belongs_to :user
    belongs_to :book
    has_many :comments, as: :commentable
    has_many :likes, as: :likeable
end
