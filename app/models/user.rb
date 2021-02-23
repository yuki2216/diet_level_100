class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :diaries
  has_many :comments

  with_options presence: true do
    validates :nickname
    validates :nickname
    validates :nickname
    validates :initial_weight
    validates :target_weight
  end

  with_options format: { with: /\A[0-9]+(\.[0-9]+)?\z/, message: "半角数字で入力してください" } do
    validates :initial_weight
    validates :target_weight
  end
end
