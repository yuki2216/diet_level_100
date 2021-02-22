class Diary < ApplicationRecord
  validates :day, presence: true
  validates :weight, presence: true
  belongs_to :user
  has_many :comments
  with_options presence: true do
    validates :day , format: { with: /\A[0-9]+\z/, message: "半角数字で入力してください" }
    validates :weight, format: { with: /\A\d{1,3}[.]\d{1,2}\z/, message: "第二位までの小数点を含む半角数字で入力してください" }
  end

  def self.search(search)
    if search != ""
      Diary.where('day LIKE(?)', "%#{search}%")
    else
      Diary.all
    end
  end
end
