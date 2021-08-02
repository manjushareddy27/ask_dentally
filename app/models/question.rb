class Question < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
  
  has_many :answers, dependent: :destroy
  belongs_to :user
end
