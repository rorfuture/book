class Book < ApplicationRecord
    has_many :articles
    belongs_to :user
    accepts_nested_attributes_for :articles, allow_destroy: true, reject_if: :all_blank
end
