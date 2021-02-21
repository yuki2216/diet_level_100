class Diary < ApplicationRecord
  validates :day, presence: true
  validates :weight, presence: true
  belongs_to :user
  has_many :comments
end
