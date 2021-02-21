class Diary < ApplicationRecord
  validates :day, presence: true
  validates :weight, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Diary.where('day LIKE(?)', "%#{search}%")
    else
      Diary.all
    end
  end
end
