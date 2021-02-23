class Diary < ApplicationRecord
  validates :day, presence: true
  validates :weight, presence: true
  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :day
    validates :weight
  end

  with_options format: { with: /\A[0-9]+(\.[0-9]+)?\z/, message: "半角数字で入力してください" } do
    validates :weight
    validates :sugar
    validates :protein
    validates :calorie
    validates :lipid
  end

  def self.search(search)
    if search != ""
      Diary.where('day LIKE(?)', "%#{search}%")
    else
      Diary.all
    end
  end
end
