class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :diaries
  has_many :comments

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: '半角英数字を使用してください'

  with_options presence: true do
    validates :nickname
    validates :initial_weight
    validates :target_weight
  end

  with_options format: { with: /\A[0-9]+(\.[0-9]+)?\z/, message: "半角数字で入力してください" } do
    validates :initial_weight
    validates :target_weight
  end
end
