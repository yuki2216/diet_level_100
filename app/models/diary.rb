class Diary < ApplicationRecord
  validates :day, presence: true
  validates :weight, presence: true
end
