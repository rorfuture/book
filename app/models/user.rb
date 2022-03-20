class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum gender: { male: 0, female: 1, other: 2 }
  validates :terms_of_service, acceptance: true
  validates :first_name, presence: true, length: {minimum: 3, maximum: 40} 
  validates :last_name, presence: true, length: {minimum: 3, maximum: 40}
  validates :gender, presence: true 
end
